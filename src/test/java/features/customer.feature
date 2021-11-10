Feature: Testing the API's

  Scenario: Register employee
    Given I create a new request with https://apix-generics-db-sapi.us-e2.cloudhub.io/api/ service
    And I add the employee endpoint to the service
    And I pass application/json as content type
    And I pass 1234 as x-correlation-id
    And I send the values of src/test/resources/cucumberTest/postEmployeeDetails.json in the request body
    And I send the POST request to the service
    Then I get the 201 response code

  Scenario: Get all employee details
    Given I create a new request with https://apix-generics-db-sapi.us-e2.cloudhub.io/api/ service
    And I add the employee endpoint to the service
    And I send the GET request to the service
    Then I get the 200 response code

  Scenario: Get employee details with userid
    Given I create a new request with https://apix-generics-db-sapi.us-e2.cloudhub.io/api/ service
    And I add the employee/14 endpoint to the service
    And I send the GET request to the service
    Then I get the 200 response code

  Scenario: UPDATE employee
    Given I create a new request with https://apix-generics-db-sapi.us-e2.cloudhub.io/api/ service
    And I add the employee/14 endpoint to the service
    And I pass application/json as content type
    And I send the values of src/test/resources/cucumberTest/putEmployeeDetails.json in the request body
    And I send the PUT request to the service
    Then I get the 201 response code

  Scenario: DELETE employee details with userid
    Given I create a new request with https://apix-generics-db-sapi.us-e2.cloudhub.io/api/ service
    And I add the employee/14 endpoint to the service
    And I pass application/json as content type
    And I send the DELETE request to the service
    Then I get the 200 response code
