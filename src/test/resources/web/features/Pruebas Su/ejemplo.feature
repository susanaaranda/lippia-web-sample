@Web @Projects @NewProject @Regression
Feature: Creacion de Proyectos

  @Smoke @EliminarCreacionesWeb @Automated
  Scenario Outline: Crear proyecto Proyecto de Automation exitosamente
    Given el cliente está logueado con el usuario de automation
    And el idioma del sistema está en <idioma>
    And El cliente realiza un click sobre el boton Nuevo
    And El cliente completa el campo Nombre Proyecto de Automation
    And El cliente completa el campo Codigo
    And completa el campo Descripcion Proyecto de Automation
    When The client search for word Docker
    And El cliente completa el campo Nombre Proyecto de Automation
    Then se visualiza mensaje de grabacion 
    

    
    @ES
    Examples:
      | idioma | mensaje         |
      | ES     | Proyecto creado |
