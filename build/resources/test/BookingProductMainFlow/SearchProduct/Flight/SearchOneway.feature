Feature: Search Flight Oneway

  Background:
    * url baseUrlFlight
    * def reqbodysearchflight = read('classpath:request/booking/search/flight/search-oneway.json')
    * set reqbodysearchflight.context.tvLifetime = tvLifetime
    * set reqbodysearchflight.context.tvSession = tvSession

  Scenario: User Search Flight Oneway Successful
    Given path searchOneWay
    And request reqbodysearchflight
    When method POST
    Then match response.data.searchCompleted == true
    And assert response.data.searchResults[0] != null
    * print response.data.searchResults[0]