Feature: Refund Request

  Background:
    * url baseUrlIPI
    * json requestbodyRefundReq = read('classpath:request/refund/pre/AT/request.json')
    * set requestbodyRefundReq.context.tvLifetime = tvLifetime
    * set requestbodyRefundReq.context.tvSession = tvSession

  Scenario: Refund Request
    Given path refundRequest
    And headers accept
    And request requestbodyRefundReq
    When method POST
    Then match response.data.status == "SUCCESS"