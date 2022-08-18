  @POST
   Feature:  Service client Get
     As QA Automation
     I want to consult a client
     To validate the status code and response

     Background: consume service
       * url url

       Scenario: Check the service GET method

         * def responsesGet = read('classpath:Karate/request/responsesGet.json')

         Given path 'users','2'
         When method get
         Then status 200
         And match response == responsesGet
         And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
         And assert response.support.url == "https://reqres.in/#support-heading"
         And assert response.data.email == email
         And assert response.data.id == 2
         And assert response.data.first_name == "Janet"
         And assert response.data.last_name == "Weaver"
         And assert response.data.avatar == "https://reqres.in/img/faces/2-image.jpg"