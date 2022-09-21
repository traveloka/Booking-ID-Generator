Feature: Sub Item

  Background:
    * url baseUrlIPI

    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodySubItem = read('classpath:request/refund/submission/AT/subItems.json')
    * set requestbodySubItem.context.tvLifetime = tvLifetime
    * set requestbodySubItem.context.tvSession = tvSession
    * set requestbodySubItem.data.sessionId = sessionId
    * print requestbodySubItem

  Scenario: Get Sub Item
    Given path refundSubItem
    And headers accept
    And request requestbodySubItem
    When method POST
    Then match response.data.apiStatus == "SUCCESS"
    * print response