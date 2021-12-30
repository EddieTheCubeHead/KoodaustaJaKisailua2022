# Created by MustacheCorp at 21/12/2021
Feature: MustacheCorp poker hand checker hand comparison function randomized hand tests
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

  Scenario: Two pairs wins high card
    Given I play two pairs
    When my opponent plays high card
    Then my hand wins

  Scenario: Three of a kind wins two pairs
    Given I play three of a kind
    When my opponent plays two pairs
    Then my hand wins

  Scenario: Three of a kind wins pair
    Given I play three of a kind
    When my opponent plays a pair
    Then my hand wins

  Scenario: Three of a kind wins high card
    Given I play three of a kind
    When my opponent plays high card
    Then my hand wins

  Scenario: Straight wins three of a kind
    Given I play a straight
    When my opponent plays three of a kind
    Then my hand wins

  Scenario: Straight wins two pairs
    Given I play a straight
    When my opponent plays two pairs
    Then my hand wins

  Scenario: Straight wins pair
    Given I play a straight
    When my opponent plays a pair
    Then my hand wins

  Scenario: Straight wins high card
    Given I play a straight
    When my opponent plays high card
    Then my hand wins

  Scenario: Flush wins straight
    Given I play a flush
    When my opponent plays a straight
    Then my hand wins

  Scenario: Flush wins three of a kind
    Given I play a flush
    When my opponent plays three of a kind
    Then my hand wins

  Scenario: Flush wins two pairs
    Given I play a flush
    When my opponent plays two pairs
    Then my hand wins

  Scenario: Flush wins pair
    Given I play a flush
    When my opponent plays a pair
    Then my hand wins

  Scenario: Flush wins high card
    Given I play a flush
    When my opponent plays high card
    Then my hand wins

  Scenario: Full house wins flush
    Given I play a full house
    When my opponent plays a flush
    Then my hand wins

  Scenario: Full house wins straight
    Given I play a full house
    When my opponent plays a straight
    Then my hand wins

  Scenario: Full house three of a kind
    Given I play a full house
    When my opponent plays three of a kind
    Then my hand wins

  Scenario: Full house two pairs
    Given I play a full house
    When my opponent plays two pairs
    Then my hand wins

  Scenario: Full house wins a pair
    Given I play a full house
    When my opponent plays a pair
    Then my hand wins

  Scenario: Full house wins high card
    Given I play a full house
    When my opponent plays high card
    Then my hand wins

  Scenario: Four of a kind wins full house
    Given I play four of a kind
    When my opponent plays a full house
    Then my hand wins

  Scenario: Four of a kind wins flush
    Given I play four of a kind
    When my opponent plays a flush
    Then my hand wins

  Scenario: Four of a kind wins straight
    Given I play four of a kind
    When my opponent plays a straight
    Then my hand wins

  Scenario: Four of a kind wins three of a kind
    Given I play four of a kind
    When my opponent plays three of a kind
    Then my hand wins

  Scenario: Four of a kind wins two pairs
    Given I play four of a kind
    When my opponent plays two pairs
    Then my hand wins

  Scenario: Four of a kind wins pair
    Given I play four of a kind
    When my opponent plays a pair
    Then my hand wins

  Scenario: Four of a kind wins high card
    Given I play four of a kind
    When my opponent plays high card
    Then my hand wins

  Scenario: Straight flush wins four of a kind
    Given I play a straight flush
    When my opponent plays four of a kind
    Then my hand wins

  Scenario: Straight flush wins full house
    Given I play a straight flush
    When my opponent plays a full house
    Then my hand wins

  Scenario: Straight flush wins flush
    Given I play a straight flush
    When my opponent plays a flush
    Then my hand wins

  Scenario: Straight flush wins straight
    Given I play a straight flush
    When my opponent plays a straight
    Then my hand wins

  Scenario: Straight flush wins three of a kind
    Given I play a straight flush
    When my opponent plays three of a kind
    Then my hand wins

  Scenario: Straight flush wins two pairs
    Given I play a straight flush
    When my opponent plays two pairs
    Then my hand wins

  Scenario: Straight flush wins pair
    Given I play a straight flush
    When my opponent plays a pair
    Then my hand wins

  Scenario: Straight flush wins high card
    Given I play a straight flush
    When my opponent plays high card
    Then my hand wins