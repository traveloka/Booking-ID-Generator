Feature: Booking Info Hotel

  Background:
    * url baseUrlPayment

    * def reqBookingInfoHotel = read('classpath:request/booking/payment/bookingInfo.json')
    * set reqBookingInfoHotel.context.tvLifetime = tvLifetime
    * set reqBookingInfoHotel.context.tvSession = tvSession

  Scenario: Booking Info Hotel
    Given path bookingInfoHotel
    And request reqBookingInfoHotel
    When method POST
    Then status 200
    And assert response.data.type == 'HOTEL'
    And assert response.status == 'SUCCESS'
    And match response.data.hotelBookingInfo contains { bookingId: '#notnull'}