Feature: Transaction Status Page

  Background:
    * url baseUrlPayment

    #* def submitpayresponse = call read('classpath:BookingProductMainFlow/BookingProduct/Payment/submitPayment.feature')
    #* print submitpayresponse

    * def reqbodytrxstatus = read('classpath:request/booking/payment/transactionstatus.json')
    * set reqbodytrxstatus.context.tvLifetime = tvLifetime
    * set reqbodytrxstatus.context.tvSession = tvSession



  Scenario: Review Booking Flight
    Given path transactionstatus
    And request reqbodytrxstatus
    When method POST
    Then status 200
    And assert response.data.bookingStatus == 'BOOKED'
    * print response