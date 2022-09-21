Feature: PreBooking Hotel
  Background:
    * url baseUrlHotel

    * def reqPreBookingHotel = read('classpath:request/booking/booking/hotel/prebooking.json')
    * set reqPreBookingHotel.context.tvLifetime = tvLifetime
    * set reqPreBookingHotel.context.tvSession = tvSession

  Scenario: PreBooking Hotel
    Given path prebookingHotel
    And request reqPreBookingHotel
    When method POST
    Then status 200
    And match response.data contains { preBookingId: '#notnull' }
    And assert response.data.status == 'SUCCESS'