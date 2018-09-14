Feature:
	SwiftRef uses OAuth to authenticate users and their roles
	As SwiftRef client I want to be able to use OAuth to authenicate against the API

	Scenario: Setting headers in GET request
		Given I set Content-Type header to application/x-www-form-urlencoded
		And I set Authorization header to "Basic RXRVQjh3SDhPQkNya0hQdExNZ3dEcUtsYTlKcGRGRzg6b0VyWHNaeEhWbFZsN2FDag=="
		And I set body to {"username":"raju", "password":"1234", "grant_type":"password"}
		When I GET /token
		Then response code should be 200
		And I store the value of body path $.access_token as access token
