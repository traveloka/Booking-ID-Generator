Feature: Search Room Hotel

  Background:
    * url baseUrlHotel

    * def reqSearchRoomHotel = read('classpath:request/booking/search/hotel/searchRoom.json')
    * set reqSearchRoomHotel.context.tvLifetime = tvLifetime
    * set reqSearchRoomHotel.context.tvSession = tvSession

  Scenario: Search Room Hotel
    Given path searchRoom
    And request reqSearchRoomHotel
    When method POST
    Then status 200
    And assert response.data.status == 'SUCCESS'
    And match response.data.recommendedEntries[0] contains { roomList: '#notnull' }
    # * print response.data.recommendedEntries[0].roomList[0]
