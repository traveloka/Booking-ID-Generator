Feature: Verify MFA

  Background:
    * url baseUrlUser
    * json requestbodyverifyMFA = read('classpath:request/user/Login/verifyMFA.json')

  Scenario: Verify MFA
    Given path verifymfa
    And headers accept
    And request requestbodyverifyMFA
    When method POST
    #Then match response.data contains {message: "Your account is now active"}