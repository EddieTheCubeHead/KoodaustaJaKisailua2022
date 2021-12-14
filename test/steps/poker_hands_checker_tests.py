from behave import *

from poker_hands_checker import compare_hands


@given("I play the hand {hand}")
def step_impl(context, hand: str):
    context.first_hand = _parse_hand(hand)


@when("my opponent plays the hand {hand}")
def step_impl(context, hand: str):
    context.second_hand = _parse_hand(hand)


@then("my hand wins")
def step_impl(context):
    assert_expected_result(context.first_hand, context.second_hand, 1)
    assert_expected_result(context.second_hand, context.first_hand, -1)


@then("my hand loses")
def step_impl(context):
    assert_expected_result(context.first_hand, context.second_hand, -1)
    assert_expected_result(context.second_hand, context.first_hand, 1)


@then("it's a tie")
def step_impl(context):
    assert_expected_result(context.first_hand, context.second_hand, 0)


def _parse_hand(hand: str) -> list[str]:
    return list(hand.split(" "))


def assert_expected_result(first_hand, second_hand, expected):
    result: int = compare_hands(first_hand, second_hand)
    assert type(result) == int, f"The type {type(result)} of received result {result} was not 'int'."
    assert result in range(-1, 2), f"Expected the result to be in the group {list(range(-1, 2))} but got {result} " \
                                   f"instead"
    assert result == expected, f"Expected hand {first_hand} to be {get_string(expected)} against hand {second_hand} " \
                               f"but the result was {get_string(result)}"


def get_string(expected) -> str:
    if expected == 0:
        return "tying (0)"
    return "winning (1)" if expected == 1 else "losing (-1)"
