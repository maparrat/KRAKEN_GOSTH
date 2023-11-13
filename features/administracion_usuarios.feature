Feature: Administración de usuarios

@user1 @web
Scenario: SC06 - Creación de un nuevo usuario de forma manual
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click new member
    And I wait for 5 seconds
    And I enter new name "Aurora Rincon"
    And I wait for 2 seconds
    And I enter new email "ar.rincon@uniandes.edu.co"
    And I wait for 2 seconds
    And I click save member
    And I wait for 7 seconds
    And I click members
    And I wait for 3 seconds
    Then I see new member
	
@user1 @web
Scenario: SC07 - Creación de un usuario existente
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click new member
    And I wait for 5 seconds
    And I enter new name "Aurora Rincon"
    And I wait for 2 seconds
    And I enter new email "ar.rincon@uniandes.edu.co"
    And I wait for 2 seconds
    And I click members
    And I wait for 3 seconds
    And I click leave
    And I wait for 3 seconds
    Then I see new member
	
@user1 @web
Scenario: SC08 - Creación de varios usuarios de forma manual
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click new member
    And I wait for 5 seconds
    And I enter new name "Miguel Parra"
    And I wait for 2 seconds
    And I enter new email "ma.parra@uniandes.edu.co"
    And I wait for 2 seconds
    And I click save member
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click new member
    And I wait for 5 seconds
    And I enter new name "Isabel Rozo"
    And I wait for 2 seconds
    And I enter new email "is.rozo@uniandes.edu.co"
    And I wait for 2 seconds
    And I click save member
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click new member
    And I wait for 5 seconds
    And I enter new name "Jaime Garzon"
    And I wait for 2 seconds
    And I enter new email "ja.garzon@uniandes.edu.co"
    And I wait for 2 seconds
    And I click save member
    And I wait for 7 seconds
    And I click members
    And I wait for 3 seconds
    Then I see several new member

@user1 @web
Scenario: SC09 - Eliminar un usuario de forma manual
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click Jaime member
    And I wait for 2 seconds
    And I click settings
    And I wait for 2 seconds
    And I click delete member
    And I wait for 2 seconds
    And I click confirm delete member
    And I wait for 2 seconds
    And I click members
    And I wait for 2 seconds
    Then I see less members

    @user1 @web
Scenario: SC10 - Eliminar varios usuarios de forma manual
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click Pepito member
    And I wait for 2 seconds
    And I click settings
    And I wait for 2 seconds
    And I click delete member
    And I wait for 2 seconds
    And I click confirm delete member
    And I wait for 2 seconds
    And I click Carlos member
    And I wait for 2 seconds
    And I click settings
    And I wait for 2 seconds
    And I click delete member
    And I wait for 2 seconds
    And I click confirm delete member
    And I wait for 2 seconds
    And I click members
    And I wait for 2 seconds
    Then I see several less members

   @user1 @web
Scenario: SC11 - Editar usuario de forma manual
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click Pepito member
    And I wait for 2 seconds
    And I click settings
    And I wait for 2 seconds
    And I click members
    And I wait for 2 seconds
    Then I see several less members

    @user1 @web
Scenario: SC12 - Editar usuarios de forma manual
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 5 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 7 seconds
    And I click members
    And I wait for 5 seconds
    And I click Pepito member
    And I wait for 2 seconds
    And I click settings
    And I wait for 2 seconds
    And I click delete member
    And I wait for 2 seconds
    And I click confirm delete member
    And I wait for 2 seconds
    And I click Carlos member
    And I wait for 2 seconds
    And I click settings
    And I wait for 2 seconds
    And I click delete member
    And I wait for 2 seconds
    And I click confirm delete member
    And I wait for 2 seconds
    And I click members
    And I wait for 2 seconds
    Then I see several less members