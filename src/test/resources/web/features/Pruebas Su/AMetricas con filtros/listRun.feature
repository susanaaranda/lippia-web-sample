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