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

  Scenario: Pair with joker and higher high card wins equal pair with lower high card
    Given I play the hand J C10 D7 H6 C2
    When my opponent plays the hand H10 C6 S10 H5 D3
    Then my hand wins

  Scenario: Pair with lower high card loses to equal pair with joker and higher high card
    Given I play the hand H6 C12 D4 H12 C8
    When my opponent plays the hand S12 H11 D2 C7 J
    Then my hand loses

  Scenario: Pair with higher high card wins equal pair with joker and lower high card
    Given I play the hand C13 D8 H9 C9 H11
    When my opponent plays the hand S4 H7 J D9 C2
    Then my hand wins

  Scenario: Pair with joker and lower high card loses to equal pair with higher high card
    Given I play the hand C11 D8 C4 H12 J
    When my opponent plays the hand C5 H12 C12 H1 H4
    Then my hand loses

  Scenario: Pair with joker and lower high card loses to equal pair with joker and higher high card
    Given I play the hand H9 D11 C6 J H4
    When my opponent plays the hand H11 C10 H8 J C2
    Then my hand loses

  Scenario: Pair with joker and higher high card wins equal pair with joker and lower high card
    Given I play the hand H9 C8 D5 J H11
    When my opponent plays the hand J H3 C11 D8 C6
    Then my hand wins

  Scenario: Pair with joker loses to two pairs
    Given I play the hand S2 D8 H10 J C7
    When my opponent plays the hand H9 D13 C13 S5 H5
    Then my hand loses

  Scenario: Two pairs wins pair with joker
    Given I play the hand D10 C6 H6 C10 H8
    When my opponent plays the hand C11 H8 C9 D2 J
    Then my hand wins

  # It is impossible two have two pairs with a joker, as it would always be more beneficial to use the joker to turn
  # one of the pairs into a three of a kind.

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
    Given I play the hand J H4 C8 J D9
    When my opponent plays the hand H10 D11 C11 S11 H3
    Then my hand loses

  Scenario: Three of a kind with joker and higher high card wins equal three of a kind with joker and lower high card
    Given I play the hand H8 C10 D8 H10 J
    When my opponent plays the hand D10 H5 C3 J S10
    Then my hand wins

  Scenario: Three of a kind with joker and lower high card loses to equal three of a kind with joker and higher high card
    Given I play the hand J C1 D8 H1 H11
    When my opponent plays the hand H10 C13 J S1 C1
    Then my hand loses

  Scenario: Three of a kind with two jokers and higher high card wins equal three of a kind with lower high card
    Given I play the hand J J H10 C7 D12
    When my opponent plays the hand C12 H8 C4 H12 S12
    Then my hand wins

  Scenario: Three of a kind with two jokers and lower high card loses to equal three of a kind with higher high card
    Given I play the hand H1 J C3 J D7
    When my opponent plays the hand C11 D1 S1 C1 C13
    Then my hand loses

  Scenario: Three of a kind with higher high card wins equal three of a kind with two jokers and lower high card
    Given I play the hand C9 D11 H9 S9 H4
    When my opponent plays the hand D7 J H4 D9 J
    Then my hand wins

  Scenario: Three of a kind with two jokers and lower high card loses to equal three of a kind with higher high card
    Given I play the hand J C2 H5 H10 J
    When my opponent plays the hand H4 C10 S8 D10 S10
    Then my hand loses

  Scenario: Three of a kind with lower high card loses to equal three of a kind with two jokers and higher high card
    Given I play the hand H12 C8 D3 D12 C12
    When my opponent plays the hand J S12 H11 J C4
    Then my hand loses

  Scenario: Three of a kind with two jokers and higher high card wins equal three of a kind with lower high card
    Given I play the hand H12 J J C1 D8
    When my opponent plays the hand C6 S12 H10 C12 D12
    Then my hand wins

  Scenario: Three of a kind with joker loses to straight
    Given I play the hand H7 D10 S3 H10 J
    When my opponent plays the hand S8 D5 H7 H6 D4
    Then my hand loses

  Scenario: Straight wins three of a kind with joker
    Given I play the hand D11 H10 H9 H8 C7
    When my opponent plays the hand J S8 D3 C8 H4
    Then my hand wins

  Scenario: Three of a kind with two jokers loses to straight
    Given I play the hand H8 J D2 C11 J
    When my opponent plays the hand H6 S8 C7 D5 S9
    Then my hand loses

  Scenario: Straight wins three of a kind with two jokers
    Given I play the hand S12 D11 H13 C10 C9
    When my opponent plays the hand H3 D5 J J C1
    Then my hand wins

  # If the hand has four cards that are sequential, or that form a straight with a gap, and a joker, the hand should be
  # considered a straight, given the cards are not all from the same suite. Similarly if the hand has three cards
  # that are sequential, or that form a straight with two gaps, and two jokers, the hand should also be considered a
  # straight given the cards are not all from the same suite.

  Scenario: Straight with a joker wins three of a kind
    Given I play the hand S6 J H8 C9 D10
    When my opponent plays the hand H10 C10 S10 D1 H12
    Then my hand wins

  Scenario: Three of a kind loses to straight with a joker
    Given I play the hand C8 D3 H7 C7 D7
    When my opponent plays the hand J S11 C12 D13 H10
    Then my hand loses

  Scenario: Straight with a joker wins three of a kind with joker
    Given I play the hand C8 D9 J H10 H11
    When my opponent plays the hand S8 D3 H3 J H13
    Then my hand wins

  Scenario: Three of a kind with joker loses to straight with joker
    Given I play the hand J H11 D9 S11 H4
    When my opponent plays the hand H3 H5 H6 H7 J
    Then my hand loses

  Scenario: Straight with two jokers wins three of a kind
    Given I play the hand H5 J H8 C9 J D4
    When my opponent plays the hand D11 H12 C11 H11 C2
    Then my hand wins

  Scenario: Three of a kind loses to straight with two jokers
    Given I play the hand H13 D13 C13 H8 D6
    When my opponent plays the hand H2 C3 D4 J J
    Then my hand loses

  Scenario: Three of a kind loses to high straight with joker
    Given I play the hand H3 D5 C5 H8 S5
    When my opponent plays the hand H11 S12 J D13 H1
    Then my hand loses

  Scenario: High straight with joker wins three of a kind
    Given I play the hand H11 D12 C13 S1 J
    When my opponent plays the hand C1 D1 H1 H13 D11
    Then my hand wins

  Scenario: High straight with two sequential jokers wins three of a kind
    Given I play the hand J J H12 S1 D13
    When my opponent plays the hand D10 H8 C10 S10 H4
    Then my hand wins

  Scenario: Three of a kind loses to high straight with two sequential jokers
    Given I play the hand C5 D8 H8 S8 H10
    When my opponent plays the hand H12 D13 C1 J J
    Then my hand loses

  Scenario: Straight with joker and higher highest card wins straight with lower highest card
    Given I play the hand H8 C7 J H6 H5
    When my opponent plays the hand H4 S8 C5 D6 S7
    Then my hand wins

  Scenario: Straight with lower highest card loses to straight with joker and higher highest card
    Given I play the hand S5 C2 H4 H1 D3
    When my opponent plays the hand J D2 H3 C5 H4
    Then my hand loses

  Scenario: Straight with higher highest card wins straight with joker and lower highest card
    Given I play the hand H9 D10 H7 D11 C8
    When my opponent plays the hand H6 J C7 D9 H10
    Then my hand wins

  Scenario: Straight with joker and lower highest card loses to straight with higher highest card
    Given I play the hand H8 D7 J C4 S5
    When my opponent plays the hand S9 D10 S8 C7 H6
    Then my hand loses

  Scenario: Straight with joker and higher highest card wins straight with joker and lower highest card
    Given I play the hand J H12 D11 C13 S1
    When my opponent plays the hand H10 C9 D12 J H13
    Then my hand wins

  Scenario: Straight with joker and lower highest card loses to straight with joker and higher highest card
    Given I play the hand H6 J H7 C4 D3
    When my opponent plays the hand D7 S6 S5 C4 J
    Then my hand loses

  Scenario: Straight with two jokers and higher highest card wins straight with lower highest card

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario: