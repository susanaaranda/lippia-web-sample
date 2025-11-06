@Regression @Web
Feature: #Aquí se describe el título
  Aquí se describe el feature
  
  @Issue @Smoke @Automated
  Scenario: título del escenario
    Given precondiciones
    When acciones
    Then validaciones
      
  @Issue @Candidate @Smoke
  Scenario Outline: título del escenario <campo> <campo2>
    Given precondiciones
    When acciones
    Then validaciones
    
    Examples:
      | campo | campo2 |
      | dato  | dato2  |
      
  @Automated @Issue @Smoke
  Scenario Outline: Integrar una herramienta de gestion desde el boton Agregar (<idioma>/<herramientaDeGestion>)
    Given Existe el proyecto Proyecto de Automation creado por automation
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    When hace click en Agregar de la seccion incidencias
    And selecciona la herramienta <herramientaDeGestion>
    And selecciona de la lista el proyecto <integracion>
    And hace click en Guardar de Nueva Integracion
    Then aparece una alerta con el mensaje: <mensaje>
    And se visualiza el Proyecto <integracion> asociado

    @ES
    Examples:
      | idioma | herramientaDeGestion | integracion                  | mensaje            |
      | ES     | Jira                 | RepositorioFeatureAutomation | Integracion creada |
      | ES     | Gitlab               | RepositorioFeatureAutomation | Integracion creada |
      | ES     | Azure DevOps         | AutomationLippia Team        | Integracion creada |
      | ES     | Github               | RepositorioFeatureAutomation | Integracion creada |

    @EN
    Examples:
      | idioma | herramientaDeGestion | integracion                  | mensaje             |
      | EN     | Gitlab               | RepositorioFeatureAutomation | Integration created |
      | EN     | Github               | RepositorioFeatureAutomation | Integration created |

  @NoCandidate @Issue
  Scenario Outline: Visualizar listado de incidencias desde Proyecto (<idioma>/<herramientaDeGestion>)
    Given Existe el proyecto Proyecto de Automation creado por automation
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    And hace click en el boton +Agregar en la solapa de Incidencias
    And selecciona la herramienta <herramientaDeGestion>
    And selecciona de la lista el proyecto <integracion>
    And hace click en Guardar de Nueva Integracion
    Then se visualizan en pantalla todas las integraciones asociadas al proyecto

    @ES
    Examples:
      | idioma | herramientaDeGestion | integracion                  |
      | ES     | Jira                 | RepositorioFeatureAutomation |
      | ES     | Gitlab               | RepositorioFeatureAutomation |
      | ES     | Azure DevOps         | RepositorioFeatureAutomation |
      | ES     | Github               | RepositorioFeatureAutomation |


    @EN
    Examples:
      | idioma | herramientaDeGestion | integracion                  |
      | EN     | Gitlab               | RepositorioFeatureAutomation |

  @NoCandidate @Issue
  Scenario Outline: Integrar una misma herramienta de gestion con distinto proyecto desde el boton Agregar (<idioma>/<herramientaDeGestion>)
    Given Existe el proyecto Proyecto de Automation creado por automation
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    When hace click en el boton +Agregar en la solapa de Incidencias
    And selecciona la herramienta <herramientaDeGestion>
    And selecciona de la lista el proyecto <integracion>
    And hace click en Guardar de Nueva Integracion
    And se visualiza el Proyecto <integracion> asociado
    And hace click en el boton +Agregar en la solapa de Incidencias
    And agrega nueva herramienta con el mismo tipo de herramienta <herramientaDeGestion>
    And selecciona de la lista el proyecto <integracion>
    And hace click en Guardar de Nueva Integracion
    Then en la seccion de integraciones se valida el mensaje: <mensaje>

    @ES
    Examples:
      | idioma | herramientaDeGestion | integracion                  | mensaje                                                    |
      | ES     | Jira                 | RepositorioFeatureAutomation | Ya existe una integración para la herramienta seleccionada |
      | ES     | Gitlab               | RepositorioFeatureAutomation | Ya existe una integración para la herramienta seleccionada |
      | ES     | Azure DevOps         | AutomationLippia Team        | Ya existe una integración para la herramienta seleccionada |
      | ES     | Github               | RepositorioFeatureAutomation | Ya existe una integración para la herramienta seleccionada |
