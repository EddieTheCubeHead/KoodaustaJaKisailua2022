# Created by MustacheCorp at 03/12/2021
Feature: MustacheCorp poker hand checker hand comparison function simple cases
  As a tipsy party-goer
  I want to know which one of two poker hands is stronger
  In order to ease playing poker in the company christmas party



  # Rule: A hand with no repeated cards, flush or straight, the value of the hand is determined by high card
  #   Should the high card be equal the second highest card is examined and so forth.
  #   Ace is treated as 14 in these comparisons.

  Scenario: Higher high card wins
    Given I play the hand C2 H5 S10 C3 D4
    When my opponent plays the hand H3 C8 D9 C7 S5
    Then my hand wins

  Scenario: Lower high card loses
    Given I play the hand D11 H12 S8 D2 D9
    When my opponent plays the hand C13 H2 H4 H9 S3
    Then my hand loses

  Scenario: Same high card, lower second highest loses
    Given I play the hand S11 D13 S9 S8 S7
    When my opponent plays the hand C12 S13 D8 C2 H11
    Then my hand loses

  Scenario: Same high card, higher second highest wins
    Given I play the hand S8 S9 C6 H4 D3
    When my opponent plays the hand H9 C7 D5 S4 H3
    Then my hand wins

  Scenario: High card ace wins against king
    Given I play the hand D1 S11 H4 D9 C2
    When my opponent plays the hand D13 H5 D12 C9 S3
    Then my hand wins

  Scenario: High card queen loses to high card ace
    Given I play the hand S12 H4 H5 H9 H2
    When my opponent plays the hand C1 S11 H8 D3 C2
    Then my hand loses

  Scenario: High card hands with two highest card equal, higher third highest card wins
    Given I play the hand H1 S13 D10 H8 S2
    When my opponent plays the hand D1 D13 H9 D3 S8
    Then my hand wins

  Scenario: High card hands with two highest card equal, lower third highest card loses
    Given I play the hand D12 D2 S9 S13 C3
    When my opponent plays the hand C13 H12 S10 C7 H6
    Then my hand loses

  Scenario: High card hands with three highest card equal, lower fourth highest card loses
    Given I play the hand H8 S10 S11 H6 H3
    When my opponent plays the hand D11 C10 C8 C7 C2
    Then my hand loses

  Scenario: High card hands with three highest card equal, higher fourth highest card wins
    Given I play the hand D7 D13 S1 D5 H2
    When my opponent plays the hand C1 C13 H7 H4 S3
    Then my hand wins

  Scenario: High card hands with four highest cards equal, lower last card loses
    Given I play the hand S10 D13 H1 S9 H6
    When my opponent plays the hand C1 H10 C13 D9 S8
    Then my hand loses

  Scenario: High card hands with four highest cards equal, higher last card wins
    Given I play the hand C10 C9 C6 C8 H5
    When my opponent plays the hand S10 H9 D4 H8 S6
    Then my hand wins


  # Rule: Pair wins high card. When both players have a pair, the pair with higher value wins.
  #   If players have equal value pairs, the remaining cards are compared with high card rules.
  #   Ace is treated as 14 in these comparisons.

  Scenario: Pair wins highest card
    Given I play the hand H5 D5 S2 C3 H4
    When my opponent plays the hand C13 H8 C2 D7 D2
    Then my hand wins

  Scenario: Highest card loses to pair
    Given I play the hand S1 D13 H12 S11 S9
    When my opponent plays the hand C2 H2 S8 D9 S3
    Then my hand loses

  Scenario: Higher pair wins
    Given I play the hand H11 S11 C3 H1 S5
    When my opponent plays the hand H10 D10 D8 D9 D7
    Then my hand wins

  Scenario: Lower pair loses
    Given I play the hand D8 C8 H10 S11 S7
    When my opponent plays the hand C1 H1 S2 D3 C4
    Then my hand loses

  Scenario: Equal pairs higher highest remaining card wins
    Given I play the hand H10 D10 D9 D8 D7
    When my opponent plays the hand S10 C10 H8 C6 S4
    Then my hand wins

  Scenario: Equal pairs lower highest remaining card loses
    Given I play the hand C2 D2 H10 D8 C5
    When my opponent plays the hand H13 H2 C6 D5 S2
    Then my hand loses

  Scenario: Equal pairs higher highest remaining card wins
    Given I play the hand D9 H1 C3 C9 H8
    When my opponent plays the hand C13 H9 S9 C4 H2
    Then my hand wins

  Scenario: Equal pairs and highest remaining cards, lower second highest remaining card loses
    Given I play the hand H9 C9 S13 H6 C2
    When my opponent plays the hand C13 S9 H8 D2 D9
    Then my hand loses

  Scenario: Equal pairs and highest remaining cards, higher second highest remaining card wins
    Given I play the hand D11 H11 C1 H12 D5
    When my opponent plays the hand S1 S11 C11 H10 C9
    Then my hand wins

  Scenario: Equal pairs and two highest remaining cards, lower lowest remaining card loses
    Given I play the hand C3 H13 S11 H3 S5
    When my opponent plays the hand S13 D3 H9 S3 C11
    Then my hand loses

  Scenario: Equal pairs and two highest remaining cards, higher lowest remaining card wins
    Given I play the hand S9 H1 C1 S13 D8
    When my opponent plays the hand S1 C13 D9 S3 D1
    Then my hand wins



  # Rule: Two pairs wins pair and high card. If both players have two pairs, higher pair value is examined first.
  #   If both players have equal higher pair, lower pair value is examined and after that, the remaining card value.
  #   Ace is treated as 14 in these comparisons.

  Scenario: Highest card loses to two pairs
    Given I play the hand C1 D12 H11 C10 S9
    When my opponent plays the hand H8 S8 D5 S5 C2
    Then my hand loses

  Scenario: Two pairs wins highest card
    Given I play the hand C11 H11 D2 S2 H3
    When my opponent plays the hand H2 D8 S9 C12 C3
    Then my hand wins

  Scenario: Pair loses to two pairs
    Given I play the hand H1 S1 D9 S8 H7
    When my opponent plays the hand H2 D2 S9 H9 H13
    Then my hand loses

  Scenario: Two pairs wins a pair
    Given I play the hand D10 C10 D12 C12 H1
    When my opponent plays the hand H13 C13 C4 C7 C10
    Then my hand wins

  Scenario: Two pairs, higher higher pair wins
    Given I play the hand S3 C3 H12 S11 D11
    When my opponent plays the hand H8 D8 S10 D10 C1
    Then my hand wins

  Scenario: Two pairs, lower higher pair loses
    Given I play the hand D9 C9 S7 H7 S2
    When my opponent plays the hand H13 S13 D11 H11 D6
    Then my hand loses

  Scenario: Two pairs, equal higher pair, higher lower pair wins
    Given I play the hand S1 D1 H13 D13 C9
    When my opponent plays the hand H1 C1 S11 H11 C10
    Then my hand wins

  Scenario: Two pairs, equal higher pair, lower lower pair loses
    Given I play the hand H10 D10 S13 D13 C1
    When my opponent plays the hand C11 D11 H13 C13 C9
    Then my hand loses

  Scenario: Two pairs, equal pairs, lower remaining card loses
    Given I play the hand H9 C8 S9 H8 D3
    When my opponent plays the hand D8 S8 D9 C9 D5
    Then my hand loses

  Scenario: Two pairs, equal pairs, higher remaining card wins
    Given I play the hand S13 D13 H8 S1 D8
    When my opponent plays the hand S8 D11 C8 C13 H13
    Then my hand wins


  # Rule: Three of a kind wins two pairs, pair and high card. If both players have three of a kind, higher card trio wins.
  #   Ace is treated as 14 in these comparisons.

  Scenario: High card loses to three of a kind
    Given I play the hand D12 D6 D8 D9 H10
    When my opponent plays the hand H2 S2 D2 S8 H5
    Then my hand loses

  Scenario: Three of a kind wins high card
    Given I play the hand S9 D9 H9 C3 D12
    When my opponent plays the hand S1 D9 H10 D8 C11
    Then my hand wins

  Scenario: Three of a kind wins a pair
    Given I play the hand D6 H6 C6 H1 S3
    When my opponent plays the hand C1 D1 S9 H10 C3
    Then my hand wins

  Scenario: A pair loses to three of a kind
    Given I play the hand C13 H13 C1 C9 S6
    When my opponent plays the hand H10 C10 D10 D11 S5
    Then my hand loses

  Scenario: Three of a kind wins two pairs
    Given I play the hand D11 S11 H11 C9 H3
    When my opponent plays the hand D13 H13 D1 C1 D9
    Then my hand wins

  Scenario: Two pairs loses to three of a kind
    Given I play the hand H8 S8 S10 H10 D13
    When my opponent plays the hand S1 H1 D1 C13 H11
    Then my hand loses

  Scenario: Lower three of a kind loses
    Given I play the hand S4 H4 C4 D8 C2
    When my opponent plays the hand H7 D7 S7 H6 H2
    Then my hand loses

  Scenario: Higher three of a kind wins
    Given I play the hand C11 H11 D11 H9 S4
    When my opponent plays the hand S1 H9 D9 S9 S6
    Then my hand wins


  # Rule: Straight wins three of a kind, two pairs, pair and high card.
  #   If both players have two straights, the highest card of the straight is considered.
  #   Ace is treated as 1 or 14, whichever results in a straight.
  #   In a 1-5 straight, ace doesn't count as 14 if comparing highest card.

  Scenario: A straight wins high card
    Given I play the hand C4 S5 H6 H7 S3
    When my opponent plays the hand C1 D13 D11 C10 C5
    Then my hand wins

  Scenario: High card loses to a straight
    Given I play the hand C13 H10 D8 C6 H5
    When my opponent plays the hand C8 H12 D9 C10 S13
    Then my hand loses

  Scenario: A pair loses to a straight
    Given I play the hand D10 H8 S6 D6 S7
    When my opponent plays the hand H4 S5 H3 D2 D6
    Then my hand loses

  Scenario: A straight wins a pair
    Given I play the hand S6 H7 H8 D9 C5
    When my opponent plays the hand D10 H10 S1 H13 D4
    Then my hand wins

  Scenario: A straight wins two pairs
    Given I play the hand C2 H5 D4 C6 S3
    When my opponent plays the hand D1 H1 C13 D13 H12
    Then my hand wins

  Scenario: Two pairs loses to a straight
    Given I play the hand D8 C12 H8 C1 S12
    When my opponent plays the hand H5 C9 S8 D6 D7
    Then my hand loses

  Scenario: Three of a kind loses to a straight
    Given I play the hand H1 D10 C8 H10 S10
    When my opponent plays the hand C12 H10 D9 C11 S13
    Then my hand loses

  Scenario: Both players have a straight, straight with the lower highest card loses
    Given I play the hand H9 D10 D11 H8 D7
    When my opponent plays the hand S10 S9 C11 C12 S8
    Then my hand loses

  Scenario: Low straight with an ace wins three of a kind
    Given I play the hand S1 H3 S2 D4 D5
    When my opponent plays the hand C13 D13 H13 H12 H11
    Then my hand wins

  Scenario: Three of a kind loses to low straight with an ace
    Given


  # Flush scenarios TBA
  # Full house scenarios TBA
  # Four of a kind scenarios TBA
  # Straight flush scenarios TBA
