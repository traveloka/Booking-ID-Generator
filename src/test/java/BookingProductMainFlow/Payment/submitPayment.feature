Feature: Payment Process

  Background:
    * def reviewbookingresponse = call read('classpath:BookingProductMainFlow/BookingProduct/reviewBooking.feature')
    * print reviewbookingresponse


  Scenario: Submit Payment
    # submit payment
    * url baseUrlPayment

    * def reqbodysubmitPay = read('classpath:request/booking/payment/submitPayment.json')
    * set reqbodysubmitPay.context.tvLifetime = tvLifetime
    * set reqbodysubmitPay.context.tvSession = tvSession
    * set reqbodysubmitPay.data.auth = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.auth
    * set reqbodysubmitPay.data.invoiceId = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.invoiceId

    Given path submitPayment
    And request reqbodysubmitPay
    When method POST
    #Then status 403

    # reauthenticate
    * url baseUrlUser
    * def reqbodyreauth = read('classpath:request/booking/payment/reauthenticate.json')
    * set reqbodyreauth.context.tvLifetime = tvLifetime
    * set reqbodyreauth.context.tvSession = tvSession

    Given path reauthenticate
    And request reqbodyreauth
    When method POST
    Then status 200

     # submit payment
    * url baseUrlPayment

    * def reqbodysubmitPay = read('classpath:request/booking/payment/submitPayment.json')
    * set reqbodysubmitPay.context.tvLifetime = tvLifetime
    * set reqbodysubmitPay.context.tvSession = tvSession
    * set reqbodysubmitPay.data.auth = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.auth
    * set reqbodysubmitPay.data.invoiceId = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.invoiceId

    Given path submitPayment
    And request reqbodysubmitPay
    When method POST
    Then status 200

    #trx status
    * url baseUrlPayment
    * def reqbodytrxstatus = read('classpath:request/booking/payment/transactionstatus.json')
    * set reqbodytrxstatus.context.tvLifetime = tvLifetime
    * set reqbodytrxstatus.context.tvSession = tvSession
    * set reqbodytrxstatus.data.auth = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.auth
    * set reqbodytrxstatus.data.bookingId = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.bookingId
    * set reqbodytrxstatus.data.invoiceId = reviewbookingresponse.response.data.mainProductReview.flightBookingInfo.invoiceId

    Given path transactionstatus
    And request reqbodytrxstatus
    When method POST
    Then status 200
    And assert response.data.bookingStatus == 'BOOKED'
    * print response