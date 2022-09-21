Feature: General Refund Summary
  
  Background: 
    * url baseUrlIPI
    * json requestbodySummary = read('classpath:request/refund/pre/AT/refundSummary.json')
    * set requestbodySummary.context.tvLifetime = tvLifetime
    * set requestbodySummary.context.tvSession = tvSession

  Scenario: Get Refund Summary successful
    Given path refundSummary
    And headers accept
    And request requestbodySummary
    When method POST
    Then status 200
    * print response
 #   * def responseData = response
 #   And match response.data.refundHistoryCards[0].refundId == "28422"

