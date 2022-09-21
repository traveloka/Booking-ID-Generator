Feature: Search Detail Hotel

  Background:
    * url searchHotel

    * def reqSearchDetailHotel = read('classpath:request/booking/search/hotel/searchDetail.json')
    * set reqSearchDetailHotel.context.tvLifetime = tvLifetime
    * set reqSearchDetailHotel.context.tvSession = tvSession

  Scenario: Search Detail Hotel
    Given path searchDetail
    And request reqSearchDetailHotel
    When method POST
    Then status 200
    And assert response.data.name == "Viva la villa"