Feature: Submit Refund

  Background:
    * url baseUrlIPI

    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodysubmitrefund = read('classpath:request/refund/submission/AT/submit-refund.json')
    * set requestbodysubmitrefund.context.tvLifetime = tvLifetime
    * set requestbodysubmitrefund.context.tvSession = tvSession
    * set requestbodysubmitrefund.data.sessionId = sessionId

  Scenario: Submit Refund
    Given path refundSubmit
    And headers accept
    And request requestbodysubmitrefund
    When method POST
    Then match response.userAuthSessionId != null