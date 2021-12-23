from behave import *

from src.poker_hands_checker import compare_hands
from steps.random_hand_creators import *

_RANDOMIZED_CASE_COUNT = 10000


@given("I play the hand {hand}")
def step_impl(context, hand: str):
    context.first_hands = [_parse_hand(hand)]


@given("I play a pair")
def step_impl(context):
    context.first_hands = [create_pair() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play two pairs")
def step_impl(context):
    context.first_hands = [create_two_pairs() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play three of a kind")
def step_impl(context):
    context.first_hands = [create_three_of_a_kind() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play a straight")
def step_impl(context):
    context.first_hands = [create_straight() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play a flush")
def step_impl(context):
    context.first_hands = [create_flush() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play a full house")
def step_impl(context):
    context.first_hands = [create_full_house() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play four of a kind")
def step_impl(context):
    context.first_hands = [create_four_of_a_kind() for _ in range(_RANDOMIZED_CASE_COUNT)]


@given("I play a straight flush")
def step_impl(context):
    context.first_hands = [create_straight_flush() for _ in range(_RANDOMIZED_CASE_COUNT)]
        

@when("my opponent plays the hand {hand}")
def step_impl(context, hand: str):
    context.second_hands = [_parse_hand(hand)]


@when("my opponent plays high card")
def step_impl(context):
    context.second_hands = [create_high() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays a pair")
def step_impl(context):
    context.second_hands = [create_pair() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays two pairs")
def step_impl(context):
    context.second_hands = [create_two_pairs() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays three of a kind")
def step_impl(context):
    context.second_hands = [create_three_of_a_kind() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays a straight")
def step_impl(context):
    context.second_hands = [create_straight() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays a flush")
def step_impl(context):
    context.second_hands = [create_flush() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays a full house")
def step_impl(context):
    context.second_hands = [create_full_house() for _ in range(_RANDOMIZED_CASE_COUNT)]


@when("my opponent plays four of a kind")
def step_impl(context):
    context.second_hands = [create_four_of_a_kind() for _ in range(_RANDOMIZED_CASE_COUNT)]


@then("my hand wins")
def step_impl(context):
    for first_hand, second_hand in zip(context.first_hands, context.second_hands):
        assert_expected_result(first_hand, second_hand, 1)
        assert_expected_result(second_hand, first_hand, -1)


@then("my hand loses")
def step_impl(context):
    for first_hand, second_hand in zip(context.first_hands, context.second_hands):
        assert_expected_result(first_hand, second_hand, -1)
        assert_expected_result(second_hand, first_hand, 1)


@then("it's a tie")
def step_impl(context):
    for first_hand, second_hand in zip(context.first_hands, context.second_hands):
        assert_expected_result(first_hand, second_hand, 0)


def _parse_hand(hand: str) -> list[str]:
    return list(hand.split(" "))


def assert_expected_result(first_hand, second_hand, expected):
    try:
        result: int = compare_hands(first_hand, second_hand)
    except Exception as exception:
        print(f"An exception occurred while comparing hands {first_hand} and {second_hand}")
        raise exception
    assert type(result) == int, f"The type {type(result)} of received result {result} was not 'int'."
    assert result in range(-1, 2), f"Expected the result to be in the group {list(range(-1, 2))} but got {result} " \
                                   f"instead"
    assert result == expected, f"Expected hand {first_hand} to be {get_string(expected)} against hand {second_hand} " \
                               f"but the result was {get_string(result)}"


def get_string(expected) -> str:
    if expected == 0:
        return "tying (0)"
    return "winning (1)" if expected == 1 else "losing (-1)"
