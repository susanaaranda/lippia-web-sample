Feature: #Aqui se describe el título
  Aquí se describe el feature
  
  #Aquí se describe el scenario
  @Candidate @Regression @Smoke
  Scenario: título del escenario
    Given precondiciones
    When acciones
    Then validaciones
      
  #Aquí se describe el scenario
  @NoCandidate
  Scenario Outline: título del escenario <campo> <campo2>
    Given precondiciones
    When acciones
    Then validaciones
    
    Examples:
      | campo | campo2 |
      | dato  | dato2  |
      
  
  #Aquí se describe el scenario
  @Automated @Regression @Smoke
  Scenario: título del escenario
    Given precondiciones
    When acciones
    Then validaciones
      
  #Aquí se describe el scenario
  @ToBeAutomated @Regression @Smoke
  Scenario Outline: título del escenario <campo> <campo2>
    Given precondiciones
    When acciones
    Then validaciones
    
    Examples:
      | campo | campo2 |
      | dato  | dato2  |
      
   #Aquí se describe el scenario
  @Automated @Regression
  Scenario: título del escenario
    Given precondiciones
    When acciones
    Then validaciones
      
  #Aquí se describe el scenario
  @Candidate
  Scenario Outline: título del escenario <campo> <campo2>
    Given precondiciones
    When acciones
    Then validaciones
    
    Examples:
      | campo | campo2 |
      | dato  | dato2  |