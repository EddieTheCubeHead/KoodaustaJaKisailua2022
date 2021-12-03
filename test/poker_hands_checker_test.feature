# Created by MustacheCorp at 03/12/2021
Feature: MustacheCorp poker hand checker hand comparison function
  As a tipsy party-goer
  I want to know which one of two poker hands is stronger
  In order to ease playing poker in the company christmas party

  Scenario: Different highest card
    When I play the hand C2 H5 S10 C3 D4
    Given my opponent plays the hand H3 C8 D9 C9 S5
    Then my hand wins