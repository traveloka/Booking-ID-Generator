Feature: Submit Sub Item

  Background:
    * url baseUrlIPI

    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodySubmitSubItem = read('classpath:request/refund/submission/AT/submit-subItems.json')
    * set requestbodySubmitSubItem.context.tvLifetime = tvLifetime
    * set requestbodySubmitSubItem.context.tvSession = tvSession
    * set requestbodySubmitSubItem.data.sessionId = sessionId

  Scenario: Get Sub Item
    Given path refundSubmitSubItem
    And headers accept
    And request requestbodySubmitSubItem
    When method POST
    Then match response.data contains { hook: '#notnull' }
    * print response