@Web @Login @Regression
Feature: Inicio de Sesion 

  @EN @ES @Automated
  Scenario Outline: Iniciar sesión exitosamente con el usuario <usuario>
    Given el cliente se encuentra en la página de login
    When el cliente se loguea con el usuario de <usuario>
    Then el usuario visualiza todos los proyectos en la pantalla de Dashboard 

    Examples:
      | usuario     |
      | openia      |
      | automation  |
      | credentials |

  @EN @ES @Automated
  Scenario Outline: Iniciar sesión con datos inválidos
    Given el cliente se encuentra en la página de login
    When el cliente ingresa al sistema con el usuario <usuario> y contraseña <contraseña>
    Then el cliente visualiza el error de login <mensaje>

    Examples:
      | usuario        | contraseña         | mensaje                       |
      | automation.ltm | contraseniaErronea | Invalid username or password. |
      | usuarioErroneo | 1234               | Invalid username or password. |
      |                | 123345             | Invalid username or password. |
      |                |                    | Invalid username or password. |
      | 24576898       |                    | Invalid username or password. |
      
  @Automated @EN @ES
  Scenario: Iniciar sesión con usuario Deshabilitado
    Given el cliente se encuentra en la página de login
    When el cliente está logueado con el usuario de deshabilitado
    Then el cliente visualiza el error con la cuenta deshabilitada Invalid username or password.

  @EN @ES @Automated
  Scenario: Visualizar la pantalla de login al cerrar sesión
    Given el cliente se encuentra en la página de login
    When el cliente se loguea con el usuario de automation
    When el cliente hace click en Cerrar sesión
    Then se visualiza el home
    
  @EN @ES @Automated
  Scenario: Iniciar sesión con un usario No Verificado
    Given el cliente se encuentra en la página de login
    When el cliente ingresa al sistema con el usuario usuarioinvalido y contraseña 123
    Then el cliente visualiza el mensaje Invalid username or password. de verificacion de email

  @Automated
  Scenario Outline: Contactar a un administrator al no existir proyecto (<idioma>)
    Given el cliente se encuentra en la página de login
    When el cliente se loguea con el usuario de automationuser
    And el idioma del sistema está en <idioma>
    Then no se visualizan proyectos
    And se visualiza en la pantalla de Proyectos el mensaje <mensaje>

    @ES
    Examples:
      | idioma | mensaje                                                                                   |
      | ES     | Usted no posee proyectos, por favor contacte a un administrador que cree uno para empezar |

    @EN
    Examples:
      | idioma | mensaje                                                                       |
      | EN     | There are no projects, please contact an administrator to create one to start |