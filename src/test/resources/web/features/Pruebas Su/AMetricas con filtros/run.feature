@Run @Regression
Feature: #Aquí se describe el título
  Aquí se describe el feature
  
  @Candidate
  Scenario: título del escenario
    Given precondiciones
    When acciones
    Then validaciones
      
  @Candidate
  Scenario Outline: título del escenario <campo> <campo2>
    Given precondiciones
    When acciones
    Then validaciones
    
    Examples:
      | campo | campo2 |
      | dato  | dato2  |
      
  @ToBeAutomated
  Scenario: título del escenario
    Given precondiciones
    When acciones
    Then validaciones
      
  @Candidate
  Scenario Outline: título del escenario <campo> <campo2>
    Given precondiciones
    When acciones
    Then validaciones
    
    Examples:
      | campo | campo2 |
      | dato  | dato2  |
      
  @ToBeAutomated
  Scenario Outline: Crear una nueva ejecución <nombreRun> desde el botón Agregar, incluyendo todos los escenarios. Gestor: <gestor> en idioma <idioma>
    Given Existe un proyecto Proyecto de Automation creado por usuario automation con el repositorio <repositorio> asociado con el gestor de <gestor>
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    And hace click en el boton Agregar en la seccion Última Ejecución
    And completa el campo de la Run con Nombre <nombreRun>
    And selecciona el campo Repositorio <repositorio> Run
    And selecciona el campo Rama <rama> Run
    And hace click en el boton Siguiente
    And hace click en el boton Siguiente
    When hace click en el boton Guardar de Nueva Run
    Then se verifica que esta en la pagina de Run Execution <nombreRun>
    And En la seccion Run deberia verse la nueva Run <nombreRun>

    @EN
    Examples:
      | idioma | nombreRun         | repositorio                        | rama | paso1          | paso2          | gestor |
      | EN     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configure data | Select filters | Gitlab |
    @ES
    Examples:
      | idioma | nombreRun         | repositorio                        | rama | paso1            | paso2               | gestor    |
      | ES     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configurar datos | Seleccionar filtros | Gitlab    |
      | ES     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configurar datos | Seleccionar filtros | Github    |
      | ES     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configurar datos | Seleccionar filtros | Bitbucket |

  @Candidate
  Scenario Outline: Crear run <nombreRun> desde la pagina de Ejecuciones con <gestor> (<idioma>)
    Given Existe un proyecto Proyecto de Automation creado por usuario automation con el repositorio <repositorio> asociado con el gestor de <gestor>
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    When hace click en Ejecuciones del menu lateral
    And hace click en el boton Nuevo de Runs
    And completa el campo de la Run con Nombre <nombreRun>
    And selecciona el campo Repositorio <repositorio> Run
    And selecciona el campo Rama <rama> Run
    And hace click en el boton Siguiente
    And hace click en el boton Siguiente
    And hace click en el boton Guardar de Nueva Run
    Then se verifica que esta en la pagina de Run Execution <nombreRun>
    And En la seccion Run deberia verse la nueva Run <nombreRun>

    @EN
    Examples:
      | idioma | nombreRun         | repositorio                        | rama | paso1          | paso2          | gestor |
      | EN     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configure data | Select filters | Gitlab |
    @ES
    Examples:
      | idioma | nombreRun         | repositorio                        | rama | paso1            | paso2               | gestor    |
      | ES     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configurar datos | Seleccionar filtros | Gitlab    |
      | ES     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configurar datos | Seleccionar filtros | Github    |
      | ES     | Run de Automation | RepositorioFolderFeatureAutomation | main | Configurar datos | Seleccionar filtros | Bitbucket |


  @Automated
  Scenario Outline: Crear run <nombreRun> desde Runs del menú lateral
    Given Existe un proyecto Proyecto de Automation creado por usuario automation con el repositorio <repositorio> asociado con el gestor de Gitlab
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    When se dirige a la pantalla <runSidebar> en el menú lateral izquierdo
    And hace click en el boton Nuevo de Runs
    And completa el campo de la Run con Nombre <nombreRun>
    And completa el campo Descripcion <descripcion>
    And selecciona el campo Repositorio <repositorio> Run
    And selecciona el campo Rama <rama> Run
    And hace click en el boton Siguiente
    And hace click en el boton Siguiente
    And hace click en el boton Guardar de Nueva Run
    Then se verifica que esta en la pagina de Run Execution <nombreRun>
    And En la seccion Run deberia verse la nueva Run <nombreRun>
    @EN
    Examples:
      | idioma | runSidebar | nombreRun           | repositorio                        | rama | descripcion               | paso1          | paso2         |
      | EN     | Runs       | Run de Automation 2 | RepositorioFolderFeatureAutomation | main | Run creado por automation | Configure data | Select filter |
    @ES
    Examples:
      | idioma | runSidebar  | nombreRun           | repositorio                        | rama | descripcion               | paso1            | paso2               |
      | ES     | Ejecuciones | Run de Automation 2 | RepositorioFolderFeatureAutomation | main | Run creado por automation | Configurar datos | Seleccionar filtros |
