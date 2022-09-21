Feature: Refund Review

  Background:
    * url baseUrlIPI

    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    * json requestbodyreview = read('classpath:request/refund/submission/AT/review.json')
    * set requestbodyreview.context.tvLifetime = tvLifetime
    * set requestbodyreview.context.tvSession = tvSession
    * set requestbodyreview.data.sessionId = sessionId

  Scenario: Refund Review
    Given path refundReview
    And headers accept
    And request requestbodyreview
    When method POST
    Then match response.data.selectedProductTypes[*] !contains [null]
    And match response.data contains { selectedProductItemReview: '#notnull'}