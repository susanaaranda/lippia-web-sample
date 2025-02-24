Feature: #Here the title is described
  Here the feature is described
  
  #Here the scenario is described
  @Automated @Smoke @Regression
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
    
  #Here the scenario is described
  @Automated @Smoke @Regression
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
    
  #Here the scenario is described
  @ToBeAutomated @Smoke @Regression
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
      
  #Here the scenario is described
  @Candidate
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |
      
  #Here the scenario is described
  @NoCandidate
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |
      
  #Here the scenario is described
  @NoCandidate
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |
      
  #Here the scenario is described
  @NoCandidate
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |