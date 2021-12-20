# Created by MustacheCorp at 07/12/2021
Feature: MustacheCorp poker hand checker hand comparison function joker inclusion
  As a casual player
  I want the hand checker to support joker cards
  So I can use it for casual table poker with a deck containing jokers

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