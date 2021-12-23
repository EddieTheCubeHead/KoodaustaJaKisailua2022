_RANDOMIZED_CASE_COUNT = "100"


def before_all(context):
    context.random_case_repetitions = int(context.config.userdata.get("repetitions", _RANDOMIZED_CASE_COUNT))
