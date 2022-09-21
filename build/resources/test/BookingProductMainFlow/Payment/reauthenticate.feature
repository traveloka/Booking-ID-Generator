Feature: Reauthenticate Page

  Background:
    * url baseUrlUser
    * def reqbodyreauth = read('classpath:request/booking/payment/reauthenticate.json')
    * set reqbodyreauth.context.tvLifetime = tvLifetime
    * set reqbodyreauth.context.tvSession = tvSession



  Scenario: Reauthenticate Page
    Given path reauthenticate
    And request reqbodyreauth
    When method POST
    Then status 200