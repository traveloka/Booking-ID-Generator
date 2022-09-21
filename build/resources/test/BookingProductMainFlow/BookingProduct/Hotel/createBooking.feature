Feature: Create Booking Hotel

  Background:
    * url bookHotel

    * def reqCreateBookingHotel = read('classpath:request/booking/booking/hotel/createbooking.json')
    * set reqCreateBookingHotel.context.tvLifetime = tvLifetime
    * set reqCreateBookingHotel.context.tvSession = tvSession

  Scenario: Create Booking Hotel
    Given path createBookingHotel
    And request reqCreateBookingHotel
    When method POST
    Then status 200
    And match response.data contains { bookingResult: '#notnull' }
    And assert response.data.status == 'SUCCESS'