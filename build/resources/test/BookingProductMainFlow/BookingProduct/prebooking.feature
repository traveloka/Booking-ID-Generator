Feature: Prebooking Page

  Background:
    * url baseUrlTrp
    * def reqbodyprebooking = read('classpath:request/booking/booking/flight/prebooking.json')
    * set reqbodyprebooking.context.tvLifetime = tvLifetime
    * set reqbodyprebooking.context.tvSession = tvSession


  Scenario: Prebooking Page
    Given path prebooking
    And request reqbodyprebooking
    When method POST
    Then match response.data.trackingSpec contains { searchId: '#notnull' }