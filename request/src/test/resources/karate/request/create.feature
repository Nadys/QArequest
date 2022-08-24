Feature:  Service client POST
  As QA Automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

    Scenario: check the service POST method

      * def requestCreate = {"name": "#(name)","job": "#(job)"}
      * def responsePost = read('classpath:karate/request/responsePost.json')

      Given path 'users'
      And request requestCreate
      When method post
      Then status 201
      And match response == responsePost
      And assert response.name == name
      And assert response.job == job

  Scenario Outline: Check the service POST method with users a not exist

    * def requestCreate = { "name": "#(name)","job": "#(job)" }

    * def responsePost = read ('classpath:karate/request/responsePost.json')

    Given path 'users'
    And request requestCreate
    And params { "name": <name>, "job": <job> }
    When method post
    Then status 201

    Examples:

      | name   |   job   |
      | @#$%&. |  @#$%&. |
      |  nadia |  nadia  |
      |    " " | ""      |


  Scenario Outline: Check the service POST with empty fields

    * def requestCreate = {"name":'#(name)',"job":'#(job)'}
    * def responsePost = read('classpath:karate/request/responsePost.json')

    Given path 'users'
    And request requestCreate
    And params { name: <name>, job: <job> }
    When method post
    Then status 201

    Examples:
      |name     |job        |
      |   " "   |"ingeniero"|
      |"matias" |    " "    |

