Feature:  Service login POST
  As QA Automation
  I want to create a user for login
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: check the service POST method

    * def requestCreate = {"email": "#(email)","password": "#(password)"}
    * def responsePost = {"token": 'QpwL5tke4Pnpja7X4'}


    Given path 'login'
    And request requestCreate
    When method post
    Then status 200

  Scenario Outline: Check the service POST method with users a not exist

    * def requestCreate = {"email": "#(email)","password": "#(password)"}
    * def responsePost = {"error": "user not found"}

    Given path 'login'
    And request requestCreate
    And params { "email": <email>, "password": <password> }
    When method post
    Then status 400

    Examples:

      | email   | password   |
      | @#$%&.  |  @#$%&.    |
      |    " "  | " "        |
