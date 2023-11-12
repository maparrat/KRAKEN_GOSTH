
Feature: Verificación del Editor de Contenido en Tiempo Real

@user1 @web
Scenario: My scenario 1
    Given I navigate to page "http://localhost:2368/ghost/#/editor/post/65269302f57ed340a04acce1"
    And I wait for 5 seconds
    When I enter blog "<Ingrese aquí el titulo>"
    I click update

@user2 @web
Scenario: My scenario 2
    I wait for 15 seconds
    Given I navigate to page "http://localhost:2368/test2/"
    Read "<Ingrese aquí el titulo>"

Feature: Personalización de Temas Prediseñados
@user1 @web
Scenario: My scenario 1
    Given I navigate to page "http://localhost:2368/ghost/#/editor/post/65269302f57ed340a04acce1"
    And I wait for 5 seconds
    I click button
    I click image
    I click update 

@user2 @web
Scenario: My scenario 2
    I wait for 15 seconds
    Given I navigate to page "http://localhost:2368/test2/"
    Read image "<Ingrese aquí el titulo>"

Feature: Creación de Tema Personalizado
@user1 @web
Scenario: My scenario 1
    Given I navigate to page "http://localhost:2368/ghost/#/editor/post/65269302f57ed340a04acce1"
    And I wait for 5 seconds
    I click button upload
    

Feature: Cambio Dinámico de Temas

@user1 @web
Scenario: My scenario 1
    Given I navigate to page "http://localhost:2368/ghost/#/editor/post/65269302f57ed340a04acce1"
    And I wait for 5 seconds
    When I enter blog "<Ingrese aquí el titulo>"
    I click update

@user2 @web
Scenario: My scenario 2
    I wait for 5 seconds
    Given I navigate to page "http://localhost:2368/test2/"

Feature: Validación de la Previsualización del Tema Personalizado

@user1 @web
Scenario: My scenario 1
    Given I navigate to page "http://localhost:2368/ghost/#/editor/post/65269302f57ed340a04acce1"
    And I wait for 5 seconds
    When I enter blog "<Ingrese aquí el titulo>"
    

@user2 @web
Scenario: My scenario 2
    I wait for 15 seconds
    Given I navigate to page "http://localhost:2368/test2/"
    Not Read "<Ingrese aquí el titulo>"
