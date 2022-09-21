Feature: Create Booking Flight

  Background:
    * url baseUrlTrp
    * def reqbodycreatebooking = read('classpath:request/booking/booking/flight/createbooking.json')
    * set reqbodycreatebooking.context.tvLifetime = tvLifetime
    * set reqbodycreatebooking.context.tvSession = tvSession

  Scenario: User create booking successful
    Given path createbooking
    And request reqbodycreatebooking
    When method POST
    Then status 200
    And assert response.data.bookingId != null
    And assert response.data.trackingSpec.preBookingId != null
    # * print response.data.bookingId