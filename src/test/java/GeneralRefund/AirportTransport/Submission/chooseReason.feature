Feature: Choose Refund Reason

  Background:
    * url baseUrlIPI

    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodychooseReason = read('classpath:request/refund/submission/AT/chooseReason.json')
    * set requestbodychooseReason.context.tvLifetime = tvLifetime
    * set requestbodychooseReason.context.tvSession = tvSession
    * set requestbodychooseReason.data.sessionId = sessionId

  Scenario: Choose Refund Reason
    Given path refundChooseReason
    And headers accept
    And request requestbodychooseReason
    When method POST
    Then match response.data.reasons[0] contains { name: '#notnull' }
    * print response