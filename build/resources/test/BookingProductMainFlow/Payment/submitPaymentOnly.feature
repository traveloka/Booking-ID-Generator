Feature: Payment Process

  Background:
    * url baseUrlPayment
    * def reqbodysubmitPay = read('classpath:request/booking/payment/submitPayment.json')
    * set reqbodysubmitPay.context.tvLifetime = tvLifetime
    * set reqbodysubmitPay.context.tvSession = tvSession

  Scenario: Submit Payment Only
    # submit payment
    Given path submitPayment
    And request reqbodysubmitPay
    When method POST
    Then status 200
