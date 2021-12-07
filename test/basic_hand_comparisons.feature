# Created by MustacheCorp at 03/12/2021
Feature: MustacheCorp poker hand checker hand comparison function simple cases
  As a tipsy party-goer
  I want to know which one of two poker hands is stronger
  In order to ease playing poker in the company christmas party

  Scenario: Different highest card winning
    When I play the hand C2 H5 S10 C3 D4
    Given my opponent plays the hand H3 C8 D9 C7 S5
    Then my hand wins

  Scenario: Different highest card losing
    When I play the hand D11 H12 S8 D2 D9
    Given my opponent plays the hand C13 H2 H4 H9 S3
    Then my hand loses

  Scenario: Same highest card, second highest is losing
    When I play the hand S11 D13 S9 S8 S7
    Given my opponent plays the hand C12 S13 D8 C2 H11
    Then my hand loses
    
  Scenario: Same highest card, second highest is winning
    When I play the hand S8 S9 C6 H4 D3
    Given my opponent plays the hand H9 C7 D5 S4 H3
    Then my hand wins

  Scenario: Different highest card winning with ace
    When I play the hand D1 S11 H4 D9 C2
    Given my opponent plays the hand D13 H5 D12 C9 S3
    Then my hand wins

  Scenario: Different highest card losing with ace
    When I play the hand S12 H4 H5 H9 H2
    Given my opponent plays the hand C1 S11 H8 D3 C2
    Then my hand loses

  Scenario: Pair winning highest card
    When I play the hand H5 D5 S2 C3 H4
    Given my opponent plays the hand C13 H8 C2 D7 D2
    Then my hand wins

  Scenario: Highest card losing to pair
    When I play the hand S1 D13 H12 S11 S9
    Given my opponent plays the hand C2 H2 S8 D9 S3
    Then my hand loses

  Scenario: Pair on both players winning
    When I play the hand H11 S11 C3 H1 S5
    Given my opponent plays the hand H10 D10 D8 D9 D7
    Then my hand wins

  Scenario: Pair on both players losing
    When I play the hand D8 C8 H10 S11 S7
    Given my opponent plays the hand C1 H1 S2 D3 C4
    Then my hand loses

  Scenario: Highest card loses to two pairs
    When I play the hand C1 D12 H11 C10 S9
    Given my opponent plays the hand H8 S8 D5 S5 C2
    Then my hand loses

  Scenario: Two pairs wins highest card
    When I play the hand C11 H11 D2 S2 H3
    Given my opponent plays the hand H2 D8 S9 C12 C3
    Then my hand wins

  Scenario: Pair loses to two pairs
    When I play the hand H1 S1 D9 S8 H7
    Given my opponent plays the hand H2 D2 S9 H9 H13
    Then my hand loses

  Scenario: Two pairs wins a pair
    When I play the hand D10 C10 D12 C12 H1
    Given my opponent plays the hand H13 C13 C4 C7 C10
    Then my hand wins

  Scenario: Two pairs, higher higher pair wins
    When I play the hand S3 C3 H12 S11 D11
    Given my opponent plays the hand H8 D8 S10 D10 C1
    Then my hand wins

  Scenario: Two pairs, lower higher pair loses
    When I play the hand D9 C9 S7 H7 S2
    Given my opponent plays the hand H13 S13 D11 H11 D6
    Then my hand loses

  Scenario: Two pairs, equal higher pair, higher lower pair wins
    When I play the hand S1 D1 H13 D13 C9
    Given my opponent plays the hand H1 C1 S11 H11 C10
    Then my hand wins

  Scenario: Two pairs, equal higher pair, lower lower pair loses
    When I play the hand H10 D10 S13 D13 C1
    Given my opponent plays the hand C11 D11 H13 C13 C9
    Then my hand loses

  Scenario: Two pairs, equal pairs, lower remaining card loses
    When I play the hand H9 C8 S9 H8 D3
    Given my opponent plays the hand D8 S8 D9 C9 D5
    Then my hand loses

  Scenario: Two pairs, equal pairs, higher remaining card wins
    When I play the hand S13 D13 H8 S1 D8
    Given my opponent plays the hand S8 D11 C8 C13 H13
    Then my hand wins
