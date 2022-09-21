Feature: Detail Policy

  Background:
    * url baseUrlIPI
    * json requestbodydetailTnC = read('classpath:request/refund/pre/AT/detailTnC.json')
    * set requestbodydetailTnC.context.tvLifetime = tvLifetime
    * set requestbodydetailTnC.context.tvSession = tvSession

  Scenario: Get Detail Policy
    Given path refundDetailTnC
    And headers accept
    And request requestbodydetailTnC
    When method POST
    #* def sessionID = response.data.sessionId
    #* configure sessionID = {'#sessionID'}
    #* set sessionID = sessionID
    Then match response.data contains { sessionId: '#notnull' }
    * print response