Feature: Refund Submit E2E flow

  Background:
    * def bookingID = "89710515"

  Scenario: User Submit Refund Successful
    # Refund Summary
    * def refundSummary = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/refundSummary.feature')
    * print refundSummary
    * match refundSummary.response.data.refundItemSummary.bookingId == bookingID

    # Refund Info
    * def refundInfo = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/refundInfo.feature')
    * match refundInfo.response.data.bookingId == bookingID

    # Refund Request
    * def refundRequest = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/refundRequest.feature')
    * print refundRequest
    #* match refundRequest.response.data.bookingId == bookingID

    # Refund Session Check
    * def refundsessioncheck = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/sessionCheck.feature')
    * print refundsessioncheck

    # Refund detail TnC
    * def refunddetailTnC = call read('classpath:GeneralRefund/AirportTransport/PreSubmission/detailTnC.feature')
    * print refunddetailTnC
    And def sessionId = refunddetailTnC.response.data.sessionId
    * print sessionId

    # Refund sub Item
    * def refundsubItem = call read('classpath:GeneralRefund/AirportTransport/Submission/subItem.feature')
    * print refundsubItem

    # Refund Choose Reason
    * def refundchooseReason = call read('classpath:GeneralRefund/AirportTransport/Submission/chooseReason.feature')
    * print refundchooseReason

    # Refund Submit Sub Item
    * def refundsubmitSubItem = call read('classpath:GeneralRefund/AirportTransport/Submission/submitSubItem.feature')
    * print refundsubmitSubItem

    # Refund Payment Form
    * def refundPaymentForm = call read('classpath:GeneralRefund/AirportTransport/Submission/paymentForm.feature')
    * print refundPaymentForm

    # Refund Submit Payment
    * def refundsubmitPayment = call read('classpath:GeneralRefund/AirportTransport/Submission/submitPayment.feature')
    * print refundsubmitPayment

    # Refund Review
    * def refundReview = call read('classpath:GeneralRefund/AirportTransport/Submission/refundReview.feature')
    * print refundReview

    # Refund Submit
    * def refundSubmit = call read('classpath:GeneralRefund/AirportTransport/Submission/submitRefund.feature')
    * print refundSubmit

    # User Get OTP Info
    * def userGetOTP = call read('classpath:User/Login/getOTPInfo.feature')
    * print userGetOTP

    # User Send OTP
    * def sendOTP = call read('classpath:User/Login/sendOTP.feature')
    * print sendOTP

    # Verify MFA
    * def verifyMFA = call read('classpath:User/Login/verifyMFA.feature')
    * print verifyMFA

    # Refund Submit
    * def refundSubmit = call read('classpath:GeneralRefund/AirportTransport/Submission/submitRefund.feature')
    * print refundSubmit