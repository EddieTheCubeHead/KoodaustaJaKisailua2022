# Created by MustacheCorp at 21/12/2021
Feature: Randomized hand tests
  As a middle director
  I want to ensure the engineers don't hard-code solutions
  So I know they do their work properly

  Scenario: Pair wins high card
    Given I play a pair
    When my opponent plays high card
    Then my hand wins

  Scenario: Two pairs wins pair
    Given I play two pairs
    When my opponent plays a pair
    Then my hand wins

  Scenario: Three of a kind wins two pairs
    Given I play three of a kind
    When my opponent plays two pairs
    Then my hand wins