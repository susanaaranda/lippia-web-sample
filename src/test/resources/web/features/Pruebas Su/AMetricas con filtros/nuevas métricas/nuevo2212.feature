@Regression
Feature: #Here the title is described
  Here the feature is described
  
  @IA @NoCandidate
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
      
  @Issue @Candidate
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |
      
  @ListRun @ToBeAutomated
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
      
  @Run @Automated
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |