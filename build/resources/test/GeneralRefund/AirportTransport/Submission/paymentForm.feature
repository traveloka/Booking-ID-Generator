Feature: Payment Bank Form

  Background:
    * url baseUrlIPI
    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodypaymentform = read('classpath:request/refund/submission/AT/payment-form.json')
    * set requestbodypaymentform.context.tvLifetime = tvLifetime
    * set requestbodypaymentform.context.tvSession = tvSession
    * set requestbodypaymentform.data.sessionId = sessionId

  Scenario: Choose Refund Reason
    Given path refundPaymentForm
    And headers accept
    And request requestbodypaymentform
    When method POST
    * print response
    Then match response.data.summary contains { title: '#notnull', amountDisplay: '#notnull'}