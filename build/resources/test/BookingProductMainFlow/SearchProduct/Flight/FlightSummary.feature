Feature: Booking Flight Summary

  Background:
    * url baseUrlFlight
    * def reqbodyflightsummary = read('classpath:request/booking/search/flight/booking-flightsummary.json')
    * set reqbodyflightsummary.context.tvLifetime = tvLifetime
    * set reqbodyflightsummary.context.tvSession = tvSession

  Scenario: User Get Flight Summary Successful
    Given path flightSummary
    And request reqbodyflightsummary
    When method POST
    Then assert response.data.flightJourneys != null
    * print response.data.selectedFlightProductBookingSpec.selectedFlightSpecs[0].flightIds
    And assert response.data.selectedFlightProductBookingSpec.selectedFlightSpecs[0].flightIds != null