@Web @ListRun
Feature: #Here the title is described
  Here the feature is described
  
  @Automated
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
      
  @ToBeAutomated
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |
      
  @Smoke @ES @EN @Candidate
  Scenario: Buscar run por rango de fecha de modificacion
    Given Existe una run Run de Automation creado por usuario de automation con estado UNEXECUTED para el proyecto Proyecto de Automation con el gestor Gitlab y asociado a Ningún Gestor
    And  el cliente está logueado con el usuario de automation
    And el cliente se encuentra en la pantalla Runs del proyecto Proyecto de Automation
    When El cliente hace click sobre el filtro Modificado
    And hace click sobre fecha de inicio
    And hace click sobre fecha final
    Then se visualizan las runs modificadas en ese rango de fechas

  @ES @EN @Candidate @Smoke
  Scenario: Buscar run por una fecha específica de modificacion
    Given Existe una run Run de Automation creado por usuario de automation con estado UNEXECUTED para el proyecto Proyecto de Automation con el gestor Gitlab y asociado a Ningún Gestor
    And  el cliente está logueado con el usuario de automation
    And el cliente se encuentra en la pantalla Runs del proyecto Proyecto de Automation
    When El cliente hace click sobre el filtro Modificado
    And hace click sobre fecha final
    And hace click sobre fecha final
    Then se visualizan las runs modificadas en ese rango de fechas

  @ES @EN @ToBeAutomated
  Scenario: Cerrar seleccion de filtrado fecha de modificacion
    Given Existe una run Run de Automation creado por usuario de automation con estado UNEXECUTED para el proyecto Proyecto de Automation con el gestor Gitlab y asociado a Ningún Gestor
    And  el cliente está logueado con el usuario de automation
    And el cliente se encuentra en la pantalla Runs del proyecto Proyecto de Automation
    When El cliente hace click sobre el filtro Modificado
    And hace click sobre fecha de inicio
    And hace click sobre fecha final
    And hace click sobre la cruz de cerrar filtro
    Then se visualiza la lista completa de runs
