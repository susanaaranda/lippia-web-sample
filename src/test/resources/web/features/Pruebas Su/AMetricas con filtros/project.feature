@Web @Projects @Regression
Feature: Creacion de Proyectos

  @Automated @Smoke
  Scenario Outline: Crear proyecto Proyecto de Automation exitosamente
    Given el cliente está logueado con el usuario de automation
    And el idioma del sistema está en <idioma>
    And El cliente realiza un click sobre el boton Nuevo
    And El cliente completa el campo Nombre Proyecto de Automation
    And El cliente completa el campo Codigo
    And completa el campo Descripcion Proyecto de Automation
    And click sobre el boton Guardar
    Then se recibe un mensaje de <mensaje>
    When guardo el ultimo proyecto creado
    And se verifica que esta en la pagina de Editar Proyecto
    And se visualiza el proyecto Proyecto de Automation en la pantalla de Proyectos

    @ES
    Examples:
      | idioma | mensaje         |
      | ES     | Proyecto creado |

    @EN
    Examples:
      | idioma | mensaje         |
      | EN     | Project created |

  @Smoke @ToBeAutomated
  Scenario Outline: Crear proyecto Proyecto de Automation exitosamente sin credenciales configuradas
    Given el cliente se loguea con el usuario de credentials
    And El cliente realiza un click sobre el boton Nuevo
    And el idioma del sistema está en <idioma>
    And El cliente completa el campo Nombre <nombreProyecto>
    And El cliente completa el campo Codigo
    And completa el campo Descripcion Proyecto creado para pruebas
    And click sobre el boton Guardar
    And guardo el ultimo proyecto creado
    And se visualiza en la sección de Repositorios el enlace Credential not found Go to configure
    When se verifica que esta en la pagina de Editar Proyecto
    Then se visualiza el proyecto <nombreProyecto> en la pantalla de Proyectos

    @ES
    Examples:
      | idioma | nombreProyecto         |
      | ES     | Proyecto de Automation |

    @EN
    Examples:
      | idioma | nombreProyecto         |
      | EN     | Proyecto de Automation |

  @Smoke@ToBeAutomated
  Scenario: Descartar creacion de proyecto
    Given el cliente está logueado con el usuario de automation
    And El cliente realiza un click sobre el boton Nuevo
    When click sobre el boton Descartar
    Then el usuario visualiza todos los proyectos en la pantalla de Proyectos

  @Candidate
  Scenario Outline: Crear proyecto con un codigo ya existente (<idioma>)
    Given Existe un proyecto Proyecto codigo repetido creado por usuario automation con el repositorio RepositorioFeatureAutomation asociado con el gestor de Gitlab
    And el cliente está logueado con el usuario de automation
    And el idioma del sistema está en <idioma>
    And El cliente realiza un click sobre el boton Nuevo
    And El cliente completa el campo Nombre Proyecto codigo repetido
    And completa el campo Codigo utilizando el codigo del proyecto creado anteriormente Proyecto codigo repetido
    When click sobre el boton Guardar
    Then aparece una alerta en la parte superior derecha con el mensaje: <mensaje>

    @ES
    Examples:
      | idioma | mensaje                           |
      | ES     | El código del proyecto ya existe. |

    @EN
    Examples:
      | idioma | mensaje                         |
      | EN     | The project code already exists |
