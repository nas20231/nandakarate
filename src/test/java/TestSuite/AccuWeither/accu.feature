Feature: AccuWeither Test

  Background:
    * url 'http://dataservice.accuweather.com/locations/v1/'
    * def apikey = '84wHBSmXmmd8VYU2EF3Zc5xcxbYU0Tex'
#    * def username = 'nandaaditya93'

  Scenario: Test Find Country List
    Given path 'adminareas'
    And param countryCode = 100
    And param apikey = apikey
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Test Find Admin Area List
    Given path 'countries'
    And param regionCode = 100
    And param apikey = apikey
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Test Find Region List
    Given path 'regions'
    And param apikey = apikey
    When method get
    Then status 200
    And print 'Response: ', response
    
  Scenario: Test Find Top Cities List
    Given path 'topcities'
    And param apikey = apikey
    And param group = 50
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Test Find Autocomplete search
    Given path 'cities/autocomplete'
    And param apikey = apikey
    And param q = "IND"
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Test Find City Neighbors by locationKey
    Given path 'cities/neighbors'
    And param apikey = apikey
    And param locationKey = 100
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Test Find Searchone by locationKey
    Given path locationKey = 100
    And param apikey = apikey
    When method get
    Then status 200
    And print 'Response: ', response



