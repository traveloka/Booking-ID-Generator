Feature: Send OTP

  Background:
    * url baseUrlUser
    * json requestbodysendOTP = read('classpath:request/user/Login/sendOTP.json')

  Scenario: User Send OTP
    Given path sendOTP
    And headers accept
    And request requestbodysendOTP
    When method POST
    #Then match response.data contains {message: "Your request has been successfully processed"}