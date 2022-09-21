Feature: Booking Flight Page

  Background:
    * url baseUrlTrp
    * def reqbodybookingpage = read('classpath:request/booking/booking/flight/bookingpage.json')
    * set reqbodybookingpage.context.tvLifetime = tvLifetime
    * set reqbodybookingpage.context.tvSession = tvSession

  Scenario: Booking Flight Page
    Given path booking
    And request reqbodybookingpage
    When method POST
    Then status 200
    And assert response.data.cardDisplay.productInformations[0].flightProductInformation != null
    And assert response.data.trackingSpec.preBookingId != null