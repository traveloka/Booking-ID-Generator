function fn() {

    var config = {
        baseUrlIPI : 'https://ipipapi.ipi.staging-traveloka.com/en-id',
        baseUrlFlight : 'https://origin-flight-api.fpr.staging-traveloka.com/en-id',
        baseUrlUser : 'https://api.usr.staging-traveloka.com/en-id',
        baseUrlTrp : 'https://api.trp.staging-traveloka.com/en-id',
        baseUrlPayment : 'https://paypapi.pay.staging-traveloka.com/en-id',
        refundSummaryUrl : '/v2/post-issuance/refund/pre/refund-summary',
        searchHotel : 'https://search-api.acd.staging-traveloka.com/en-id',
        baseUrlHotel : 'https://room-api.acd.staging-traveloka.com/en-id',
        bookHotel : 'https://book-api.acd.staging-traveloka.com/en-id',
        accept: 'application/json',

        // Refund Endpoint
        refundSummary :'/v2/post-issuance/refund/pre/refund-summary',
        refundInfo : '/v2/post-issuance/refund/pre/refund-info',
        refundRequest : '/v2/post-issuance/refund/pre/request',
        refundSessionCheck : '/v2/post-issuance/refund/session/check',
        refundDetailTnC : '/v2/post-issuance/refund/pre/detailed-tnc',
        refundSubItem : '/v2/post-issuance/refund/selections/subitems',
        refundChooseReason : '/v2/post-issuance/refund/selections/choose-reason',
        refundSubmitSubItem : '/v2/post-issuance/refund/selections/subitems/submit',
        refundPaymentForm : '/v2/post-issuance/refund/payment/form',
        refundSubmitPayment : '/v2/post-issuance/refund/payment/submit',
        refundReview : '/v2/post-issuance/refund/submission/review',
        refundSubmit : '/v2/post-issuance/refund/submission/submit',

        // User OTP
        getOTP : '/v2/user/getotpinfo',
        sendOTP : '/v2/user/sendotp',
        verifymfa : '/v2/user/verifymfa',
        reauthenticate : '/v2/user/reauthenticate',

        // Search Flight
        searchOneWay : '/v2/flight/search/oneway',
        flightSummary : '/v2/flight/booking/flightSummary',

        // Hotel
        searchDetail : '/v2/hotel/search/detail',
        searchRoom : '/v2/hotel/searchRooms',
        prebookingHotel : '/v2/hotel/prebooking',
        createBookingHotel : '/v2/hotel/createBooking',
        bookingInfoHotel : '/v1/booking/info',


        // Trip Booking
        prebooking : '/v2/trip/booking/prebookingPage',
        booking : '/v2/trip/booking/bookingPage',
        createbooking : '/v2/trip/booking/createBooking',
        reviewbooking : '/v2/trip/booking/reviewPage',

        //Payment
        submitPayment : '/v2/payment/submitpayment',
        transactionstatus : '/v2/payment/transactionstatus',

        //sessionID : '',
        tvLifetime : 'qgdHX7GvehrD9XH5a3S4PdE8AYpuF3hYPaT5bxhY7Zbox82AXvMsCyRF0SAjF0yttVKaoKDqe4VtrURyeSP24l4x4CMirSSA5118BYM2s2CZnE8OgLjcei3aIVPBq/emvbIVmpk3Kk7z11kmq5VSk8gEEmV3hZNu0n1KlljfutoHUKRSoe+4Mn7tQLSz1DrcVpRj64Zkuj/4ca7BtwHXrEi5KkbOYuWRfwm3mL0NN+qG5LfJaiwnI/zoaGmZ4bZN',
        tvSession : 'qgdHX7GvehrD9XH5a3S4PXWKx93/3Xi103f/kPpnhg0BXahxaplHHHHPPF6HgcwfCSd05dedUPSI8JvG/Bm2F0bRWNEcRi7pOAYn+/KajceFxmj9xN9dJRkIfFhZtx8s2mndY7ZYVVIZeFgjwA/Zu36nyqI5NxkwZq+A3MllyKrOkrhmB5vwt3pNj6kQOqY8tq0wrqx21p2kzicJ6CT52RbLSNiER2UwtLNo3xN9L/mLh38GmhmavwZlilUibuiqTdsFDwHLmieum1kVMSbGMmoZyIJjG9xMF+HsIUphXPV9jYGqxRgVYJOWaYsTvD/AII5QfHXj5aI3woIvwjwTZExV6hrERCF5cLOabRwRrqzZ1QFlrlykDCCWGpTb5L8wsNYAIWcmRcnveTf6wrKLDu0bUIkqjf+a9SAAQ8s5UJOnJXWD6kaLnKg91YOtCYgrDdSvjIN0lBuJS1j3oGWRy/gszHaAJPPGyaf9YPUDEq1ka4HxMStp/jWqh/hftkvXnpK5gvnmTV4TzFTa2OstTaj+xfcWUSCfGqXXgmWIJWi7DMyAewLn8KBa/iuP/d+3TXo0DkONoI3wx92Uq8dDWRx1YgxnOeSEm0ZkEDZsZ3P/ex9Qtugvmn2FQqDyTdDkpRqqNcuq00KMpaxEnmmHBA=='
        };

    return config;
  }
