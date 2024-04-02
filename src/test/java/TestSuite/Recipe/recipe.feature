Feature:

    Background:
        * url 'https://api.spoonacular.com/recipes/'
        * def apiKey = '2b2775dbbef845d2a65839efe2e18c55'
        * def username = 'nandaas'
        * def hash = 'b966cdea999c51fe1d972c7aafeb27ff3131ed15'

    Scenario: Test Find recipe by random
        Given path 'random'
        And param apiKey = apiKey
        When method get
        Then status 200
        And print 'Response: ', response

    Scenario: Test Find recipe by ingredientWidget.json
        Given path '1003464','ingredientWidget.json'
        And param apiKey = apiKey
        And header Content-Type = 'application/json'
        When method get
        Then status 200
        And print 'Response: ', response

    Scenario: Test Find recipe by priceBreakdownWidget.json
        Given path '1003464','priceBreakdownWidget.json'
        And param apiKey = apiKey
        And header Content-Type = 'application/json'
        When method get
        Then status 200
        And print 'Response: ', response

    Scenario: Test Ingredient Search
        Given path 'search'
        And param query = 'banana'
        And param number = 2
        And param sort = 'calories'
        And param sortDirection = 'desc'
        And param apiKey = apiKey
        And header Content-Type = 'application/json'
        When method get
        Then status 200
        And print 'Response: ', response

    Scenario: Test Search Recipes by Nutrients
        Given path 'findByNutrients'
        And param minCarbs = 10
        And param maxCarbs = 50
        And param number = 2
        And param apiKey = apiKey
        And header Content-Type = 'application/json'
        When method get
        Then status 200
        And print 'Response: ', response


