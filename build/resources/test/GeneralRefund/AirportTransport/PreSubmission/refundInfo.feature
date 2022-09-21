Feature: General Refund Info

  Background:
    * url baseUrlIPI
    * json requestbodyInfo = read('classpath:request/refund/pre/AT/refundInfo.json')
    * set requestbodyInfo.context.tvLifetime = tvLifetime
    * set requestbodyInfo.context.tvSession = tvSession

  Scenario: Get Refund Info Successful
    Given path refundInfo
    And headers accept
    And request requestbodyInfo
    When method POST
    Then status 200
    #* def responseData = response
    #And match response.data.bookingId == "89701455"