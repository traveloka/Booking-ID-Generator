Feature: Review Booking Flight

  Background:
    * url baseUrlTrp

    * def createbookingresponse = call read('classpath:BookingProductMainFlow/BookingProduct/createBooking.feature')
    * print createbookingresponse

    * def reqbodyreviewbooking = read('classpath:request/booking/booking/flight/createbooking.json')
    * set reqbodyreviewbooking.context.tvLifetime = tvLifetime
    * set reqbodyreviewbooking.context.tvSession = tvSession
    * set reqbodyreviewbooking.data.auth = createbookingresponse.response.data.auth
    * set reqbodyreviewbooking.data.bookingId = createbookingresponse.response.data.bookingId
    * set reqbodyreviewbooking.data.invoiceId = createbookingresponse.response.data.invoiceId



  Scenario: Review Booking Flight
    Given path reviewbooking
    And request reqbodyreviewbooking
    When method POST
    Then status 200
    And match response.data.mainProductReview.flightBookingInfo.invoiceId == createbookingresponse.response.data.invoiceId
    And match response.data.mainProductReview.flightBookingInfo.auth == createbookingresponse.response.data.auth
    And match response.data.mainProductReview.flightBookingInfo.bookingId == createbookingresponse.response.data.bookingId
    * print response.data.mainProductReview.flightBookingInfo.bookingId