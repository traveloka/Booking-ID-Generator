Feature: Refund Summary

  Background:
    * url baseUrlIPI
    * json requestbody = read('classpath:request/refundSummary.json')

  Scenario: Refund Summary for Flight Product
    Given path refundSummaryUrl
    And headers accept
    And request requestbody
    When method Post
    Then status 200

