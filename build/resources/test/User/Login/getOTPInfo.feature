Feature: Get OTP Info

  Background:
    * url baseUrlUser
    * json requestbodygetOTP = read('classpath:request/user/Login/getOTPInfo.json')

  Scenario: User Get OTP Info
    Given path getOTP
    And headers accept
    And request requestbodygetOTP
    When method POST
    #Then match response.data.userOTPNotificationDataList[0] contains { key: '#notnull' }