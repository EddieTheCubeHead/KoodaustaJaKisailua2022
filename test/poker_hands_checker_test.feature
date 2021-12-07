# Created by MustacheCorp at 03/12/2021
Feature: MustacheCorp poker hand checker hand comparison function
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
