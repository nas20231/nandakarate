Feature:

  Background:
    * url 'https://api.spoonacular.com/food/'
    * def apiKey = '2b2775dbbef845d2a65839efe2e18c55'
    * def username = 'nandaas'
    * def hash = 'b966cdea999c51fe1d972c7aafeb27ff3131ed15'

  Scenario: Test Random Food Joke
    Given path 'jokes/random'
    And param apiKey = apiKey
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Detect food in text
    Given path 'detect'
    And param apiKey = apiKey
    And header Content-Type = 'application/x-www-form-urlencoded'
    And param text = 'I love pizza and mineral water'
    When method post
    Then status 200
    And print 'Response: ', response

  Scenario: food displayed
    Given path 'images/classify'
    And param apiKey = apiKey
    And header Content-Type = 'application/json'
    And param imageUrl = 'https://fileinfo.com/img/ss/xl/jpg_44-2.jpg'
    When method get
    Then status 200
    And print 'Response: ', response
