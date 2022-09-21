Feature: Submit Payment Refund

  Background:
    * url baseUrlIPI

    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodysubmitpayment = read('classpath:request/refund/submission/AT/submit-payment.json')
    * set requestbodysubmitpayment.context.tvLifetime = tvLifetime
    * set requestbodysubmitpayment.context.tvSession = tvSession
    * set requestbodysubmitpayment.data.sessionId = sessionId

  Scenario: Submit Payment Refund
    Given path refundSubmitPayment
    And headers accept
    And request requestbodysubmitpayment
    When method POST
    #Then match response.data contains { hook: '#notnull'}
    #And match response.data.status == "SUCCESS"