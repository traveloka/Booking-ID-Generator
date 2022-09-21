Feature: Session Check

  Background:
    * url baseUrlIPI
    * json requestbodyCheckSession = read('classpath:request/refund/pre/AT/sessionCheck.json')
    * set requestbodyCheckSession.context.tvLifetime = tvLifetime
    * set requestbodyCheckSession.context.tvSession = tvSession

  Scenario: Session Check
    Given path refundSessionCheck
    And headers accept
    And request requestbodyCheckSession
    When method POST
    Then match response.data.apiStatus == "SUCCESS"