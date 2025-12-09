Feature: #Here the title is described
  Here the feature is described
  
  @IA
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
      
  @Issue
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |