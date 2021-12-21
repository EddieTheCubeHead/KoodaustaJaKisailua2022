__author__ = "MustacheCorp Eddie"

import random


def create_high() -> list[str]:
    numbers = sorted(_create_distinct_values(7))
    numbers.pop(random.randint(1, 2))
    numbers.pop(random.randint(3, 4))
    suites = _create_suites()
    return [f"{suite}{number}" for suite, number in zip(suites, numbers)]


def create_pair() -> list[str]:
    numbers = _create_distinct_values(4)
    numbers.append(random.choice(numbers))
    suites = _create_suites()
    return [f"{suite}{number}" for suite, number in zip(suites, numbers)]


def create_two_pairs() -> list[str]:
    numbers = _create_distinct_values(3)
    numbers += numbers
    numbers.remove(random.choice(numbers))
    suites = _create_suites()
    return [f"{suite}{number}" for suite, number in zip(suites, numbers)]


def create_three_of_a_kind() -> list[str]:
    numbers = _create_distinct_values(3)
    random_number = random.choice(numbers)
    numbers.append(random_number)
    numbers.append(random_number)
    suites = _create_suites()
    return [f"{suite}{number}" for suite, number in zip(suites, numbers)]


def _create_distinct_values(amount: int) -> list[int]:
    values = []
    while len(values) < amount:
        new_value = random.randint(1, 13)
        if new_value not in values:
            values.append(new_value)
    return values


def _create_suites(*, flush: bool = False) -> list[str]:
    possible = ["H", "S", "D", "C"]
    if flush:
        return [random.choice(possible)] * 5
    else:
        index = random.randint(0, 3)
        suites = [possible[index]]
        for suite in range(index, index + 4):
            suites.append(possible[suite % 4])
        return suites
