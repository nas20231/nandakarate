Feature: Test Meal Plan

  Background:
    * url 'https://api.spoonacular.com/mealplanner/'
    * def apiKey = '2b2775dbbef845d2a65839efe2e18c55'
    * def username = 'nandaas'
    * def hash = 'b966cdea999c51fe1d972c7aafeb27ff3131ed15'
##  * def password --> basic auth
#   * grant_type --> OAuth 2.0
#   * client_id --> Oauth 2.0 / Beareer Token
#   * client_secret -->OAuth 2.0 / Bearer Token

#    Code untuk Authorization
#    And header Authorization = "bearer ' + Token

#    Code basic Auth
#    And outh username, password

  Scenario: Test Generate Meal Plan
    Given path 'generate'
    And param apiKey = apiKey
    When method get
    Then status 200
    And print 'Response: ', response

  Scenario: Test Add Meal Plan
    Given path username, 'items'
    And param apiKey = apiKey
    And header Content-Type = 'application/json'
    And param apiKey = apiKey
    And param hash = hash
    And request
    """
       {
    "date": 1711435674,
    "slot": 1,
    "position": 0,
    "type": "RECIPE",
    "value": {
        "id": 2962132,
        "servings": 2,
        "title": "Spinach Salad with Roasted Vegetables and Spiced Chickpea",
        "imageType": "jpg",
    }
}
    """
    When method post
    Then status 200
    And match response.status == 'success'

  Scenario: Test Meal Plan by Week
    Given path username, 'week',startDate
    And param apiKey = apiKey
    And param hash = hash
    When get method get
    Then status 200
    And print 'Response: ', response

  Scenario: Delete Test Meal Plan by Week
    Given path username, 'items','982371'
    And param apiKey = apiKey
    And param hash = hash
    When get method get
    Then status 200
    And print 'Response: ', response