Feature: Search Flight Oneway

  Background:
    * url baseUrlSearchFlight
    * json requestbody = read('classpath:request/searchFlightOneWay.json')

  Scenario: Search Flight Oneway

    Given path searchOneWay
    And headers accept
    And request requestbody
    When method POST
    Then status 200
    
#    * def responseDataActual = read('classpath:response/searchFlightOneWay.json')
    * def responseData = response
  #  And print "file ==>", responseDataActual
    And match responseData.data.searchCompleted == true
