# Created by MustacheCorp at 07/12/2021
Feature: MustacheCorp poker hand checker hand comparison function joker inclusion
  As a casual player
  I want the hand checker to support joker cards
  So I can use it for casual table poker with a deck containing two jokers

  # If a hand has no repeated cards, one joker, and cannot form a straight or a flush even with a joker the joker should
  # be paired with the highest card of the hand

  Scenario: Pair with joker wins high card
    Given I play the hand J H10 C8 C7 C5
    When my opponent plays the hand C13 D10 D12 C7 H6
    Then my hand wins

  Scenario: High card loses to pair with joker
    Given I play the hand C9 D4 H11 C5 C1
    When my opponent plays the hand H1 C13 J D11 H9
    Then my hand loses

  Scenario: Lower pair with joker loses to higher pair without joker
    Given I play the hand H4 D7 H10 C2 J
    When my opponent plays the hand C1 D1 H6 C5 D2
    Then my hand loses

  Scenario: Higher pair wins lower pair with joker
    Given I play the hand H12 D12 C8 C9 D7
    When my opponent plays the hand C11 D6 D3 J S7
    Then my hand wins

  Scenario: Higher pair with joker wins lower pair
    Given I play the hand D7 H13 C2 H8 J
    When my opponent plays the hand H3 C12 S12 D5 H6
    Then my hand wins

  Scenario: Lower pair loses to higher pair with joker
    Given I play the hand H7 D4 C7 S5 C1
    When my opponent plays the hand J D1 H8 C9 S4
    Then my hand loses

  Scenario: Lower pair with joker loses to higher pair with joker
    Given I play the hand S8 D2 C10 H4 J
    When my opponent plays the hand C11 J D9 H3 D2
    Then my hand loses

  Scenario: Higher pair with joker wins lower pair with joker
    Given I play the hand J H12 D1 C9 H3
    When my opponent plays the hand C13 D2 J H9 C8
    Then my hand wins

  Scenario: Pair with joker loses to two pairs
    Given I play the hand S2 D8 H10 J C7
    When my opponent plays the hand H9 D13 C13 S5 H5
    Then my hand loses

  Scenario: Two pairs wins pair with joker
    Given I play the hand D10 C6 H6 C10 H8
    When my opponent plays the hand C11 H8 C9 D2 J
    Then my hand wins

  # If the hand has a pair and one joker, the joker should be used to turn that pair into a three of a kind. If a hand
  # has no repeated cards, two jokers, and the jokers cannot be used to construct a straight or a flush the jokers
  # should be combined with the highest card to form a three of a kind

  Scenario: Three of a kind with joker wins two pairs
    Given I play the hand S11 D13 D4 S13 J
    When my opponent plays the hand H11 C5 D3 S5 S3
    Then my hand wins

  Scenario: Two pairs loses to three of a kind with joker
    Given I play the hand H9 D2 C10 S10 H2
    When my opponent plays the hand S12 D1 J H1 C9
    Then my hand loses

  Scenario: Three of a kind with two jokers wins two pairs
    Given I play the hand C9 J D2 H13 J
    When my opponent plays the hand H9 D2 H10 C10 S9
    Then my hand wins

  Scenario: Two pairs loses to three of a kind with two jokers
    Given I play the hand H6 C12 D12 D9 S9
    When my opponent plays the hand J D9 H1 C8 J
    Then my hand loses

  Scenario: Higher three of a kind with joker wins lower three of a kind
    Given I play the hand C2 D10 H9 C10 J
    When my opponent plays the hand C8 H8 S13 D11 S8
    Then my hand wins

  Scenario: Lower three of a kind loses to higher three of a kind with joker
    Given I play the hand H10 S3 D3 H3 C9
    When my opponent plays the hand J S8 D3 H9 S9
    Then my hand loses

  Scenario: Lower three of a kind with joker loses to higher three of a kind
    Given I play the hand S8 J D3 C10 H3
    When my opponent plays the hand C7 S7 H10 D13 S7
    Then my hand loses

  Scenario: Higher three of a kind wins lower three of a kind with joker
    Given I play the hand D1 H10 J C1 H9
    When my opponent plays the hand C12 H13 S8 D13 S13
    Then my hand wins

  Scenario: Lower three of a kind with joker loses to higher three of a kind with joker
    Given I play the hand D9 S3 D3 J H11
    When my opponent plays the hand S9 H9 D3 H4 J
    Then my hand loses

  Scenario: Higher three of a kind with joker wins lower three of a kind with joker
    Given I play the hand C5 J H10 S10 D9
    When my opponent plays the hand J C8 D9 H8 C2
    Then my hand wins

  Scenario: Higher three of a kind with two jokers wins lower three of a kind
    Given I play the hand J H8 D10 C4 J
    When my opponent plays the hand H9 D3 C9 S9 C11
    Then my hand wins

  Scenario: Lower three of a kind loses to higher three of a kind with two jokers
    Given I play the hand C3 D12 H13 C12 S12
    When my opponent plays the hand J J H1 D5 C10
    Then my hand loses

  Scenario: Higher three of a kind wins lower three of a kind with two jokers
    Given I play the hand C10 H8 D8 S8 C6
    When my opponent plays the hand H6 J C2 C7 J
    Then my hand wins

  Scenario: Lower three of a kind with two jokers loses to higher three of a kind
    Given I play the hand

  Scenario: Three of a kind with joker loses to straight
    Given I play the hand H7 D10 S3 H10 J
    When my opponent plays the hand S8 D5 H7 H6 D4
    Then my hand loses

  Scenario: Straight wins three of a kind with joker
    Given I play the hand D11 H10 H9 H8 C7
    When my opponent plays the hand J S8 D3 C8 H4
    Then my hand wins

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario: