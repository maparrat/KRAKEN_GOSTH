Feature: Funcionalidad de posts

@user1 @web
    Scenario: SC01 - Crear post 
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 2 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 2 seconds
    And I enter password "Aurora2023*"
    And I wait for 2 seconds
    And I click Sign in
    And I wait for 2 seconds
    And I click posts
    And I wait for 2 seconds
    And I click new post
    And I enter post title "La victoria de Colombia"
    And I click post body
    And I enter post body "Colombia hace historia remontando el marcador a Brasil, y ganándole por primera vez en eliminatorias"
    And I wait for 2 seconds
    And I click publish
    And I wait for 1 seconds
    And I click post continue
    And I wait for 1 seconds
    And I click publish post
    And I wait for 1 seconds
    And I click back to editor
    And I wait for 1 seconds
    And I click back to posts
    And I wait for 1 seconds
    Then I see new post

    @user1 @web
    Scenario: SC02 - Crear varios posts
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click posts
    And I wait for 1 seconds
    And I click new post
    And I enter post title "Así funciona la estafa del millón de pesos diario vía WhatsApp"
    And I click post body
    And I enter post body "Varios usuarios de WhatsApp han denunciado que  reciben un mensaje, proveniente de un número internacional, que aparentemente fue escrito por el director general de proyectos de la Bolsa de Productos Básicos de Hong Kong y  que de esta manera empieza la estafa que promete que se ganará por ese medio un millón de pesos diarios."
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I click post continue
    And I wait for 1 seconds
    And I click publish post
    And I wait for 1 seconds
    And I click back to editor
    And I wait for 1 seconds
    And I click back to posts
    And I wait for 1 seconds
    And I click new post
    And I enter post title "Xbox recurre a nuevas herramientas de IA para moderar las interacciones tóxicas"
    And I click post body
    And I enter post body "Según datos recientes, el 87 por ciento de las acciones de moderación realizadas en la primera mitad del presente año fueron activadas por sistemas automáticos mejorados con nuevos modelos de inteligencia artificial (IA) diseñados para detectar contenido que viola las normas de la comunidad. Xbox reconoce la importancia de mantener un entorno de juego seguro y divertido para sus usuarios y, en ese sentido, compartieron  la necesidad de 'mantenerse al día' con los cambios en la industria que pueden afectar la experiencia de los jugadores."
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I click post continue
    And I wait for 1 seconds
    And I click publish post
    And I wait for 1 seconds
    And I click back to editor
    And I wait for 1 seconds
    And I click back to posts
    And I wait for 1 seconds
    Then I see more posts

@user1 @web
    Scenario: SC03 - Eliminar post - Ghost 5.74.0
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click posts
    And I wait for 1 seconds
    And I click post 1 to delete
    And I click post settings
    And I click post trash
    And I wait for 1 seconds
    And I click post delete ver_5_74
    And I wait for 1 seconds
    Then I see one less posts

@user1 @web
    Scenario: SC04 - Eliminar varios posts - Ghost 5.74.0
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click posts
    And I wait for 1 seconds
    And I click post 2 to delete
    And I click post settings
    And I click post trash
    And I wait for 1 seconds
    And I click post delete ver_5_74
    And I wait for 1 seconds
    And I click post 3 to delete
    And I click post settings
    And I click post trash
    And I wait for 1 seconds
    And I click post delete ver_5_74
    And I wait for 1 seconds
    Then I see none posts
	
@user1 @web
    Scenario: SC04 - Eliminar varios posts - Ghost 5.69.1
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click posts
    And I wait for 1 seconds
    And I click post 2 to delete
    And I click post settings
    And I click post trash
    And I wait for 1 seconds
    And I click post delete
    And I wait for 1 seconds
    And I click post 3 to delete
    And I click post settings
    And I click post trash
    And I wait for 1 seconds
    And I click post delete
    And I wait for 1 seconds
    Then I see none posts

@user1 @web
    Scenario: SC05 - Editar un post - Ghost 5.69.1 y Ghost 5.74.0
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click posts
    And I wait for 1 seconds
    And I click post 1 to edit
    And I click post body
    And I enter post body "Esto es una modificación al post existente"
    And I wait for 1 seconds
    And I click update post
    And I click back to posts
    And I wait for 1 seconds
    Then I see post update

Feature: Administración de usuarios

@user1 @web
Scenario: SC06 - Creación de un nuevo usuario
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
Scenario: SC08 - Creación de varios usuarios
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
Scenario: SC09 - Eliminar un usuario 
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
Scenario: SC10 - Eliminar varios usuarios 
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

Feature: Funcionalidad de pages

@user1 @web
    Scenario: SC11 - Crear page  Ghost 5.69.1 y Ghost 5.74.0
    Given I navigate to page "http://localhost:2369/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click pages
    And I wait for 1 seconds
    And I click new page
    And I enter page title "Colombia tercero en la eliminatoria"
    And I click page body
    And I enter page body "Colombia hace historia remontando el marcador a Brasil, y ganándole por primera vez en eliminatorias"
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I click page continue
    And I wait for 1 seconds
    And I click publish page
    And I wait for 1 seconds
    And I click back to editor
    And I wait for 1 seconds
    And I click back to pages
    And I wait for 1 seconds
    Then I see new page
	
@user1 @web
    Scenario: SC12 - Crear varias pages  Ghost 5.69.1 y Ghost 5.74.0
    Given I navigate to page "http://localhost:2368/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click pages
    And I wait for 1 seconds
    And I click new page
    And I enter page title "Título 2"
    And I click page body
    And I enter page body "Esta es una segunda página de prueba"
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I click page continue
    And I wait for 1 seconds
    And I click publish page
    And I wait for 1 seconds
    And I click back to editor
    And I wait for 1 seconds
    And I click back to pages
    And I wait for 1 seconds
    And I click new page
    And I enter page title "Título 3"
    And I click page body
    And I enter page body "Esta es una tercera página de prueba"
    And I wait for 1 seconds
    And I click publish
    And I wait for 1 seconds
    And I click page continue
    And I wait for 1 seconds
    And I click publish page
    And I wait for 1 seconds
    And I click back to editor
    And I wait for 1 seconds
    And I click back to pages
    Then I see more pages
	
@user1 @web
    Scenario: SC13 - Eliminar page - Ghost 5.69.1 y Ghost 5.74.0
    Given I navigate to page "http://localhost:2369/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click pages
    And I wait for 1 seconds
    And I click page 1 to delete
	And I click page settings
	And I click page trash
    And I wait for 1 seconds
	And I click page delete
	And I wait for 1 seconds
    Then I see one less page
	
@user1 @web
    Scenario: SC14 - Eliminar varias page  Ghost 5.69.1 y Ghost 5.74.0
    Given I navigate to page "http://localhost:2369/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click pages
    And I wait for 1 seconds
    And I click page 1 to delete
	And I click page settings
	And I click page trash
    And I wait for 1 seconds
	And I click page delete
	And I wait for 1 seconds
    And I click page 2 to delete
	And I click page settings
	And I click page trash
    And I wait for 1 seconds
	And I click page delete
	And I wait for 1 seconds
    Then I see none pages

@user1 @web	
Scenario: SC15 - Editar page - Ghost 5.69.1 y Ghost 5.74.0
    Given I navigate to page "http://localhost:2369/ghost/"
    And I wait for 1 seconds
    When I enter email "ma.rinconr1@uniandes.edu.co"
    And I wait for 1 seconds
    And I enter password "Aurora2023*"
    And I wait for 1 seconds
    And I click Sign in
    And I wait for 1 seconds
    And I click pages
    And I wait for 1 seconds
    And I click page 1 to edit
    And I click page body
    And I enter page body "Esto es una modificación a la page existente"
    And I wait for 1 seconds
    And I click update page
    And I click back to pages
    And I wait for 1 seconds
    Then I see page update