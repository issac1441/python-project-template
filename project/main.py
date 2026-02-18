"""Main module."""


def hello_world() -> str:
    """Return a greeting.

    Returns
    -------
    str
        A greeting message.
    """
    return "Hello from <PROJECT_NAME>!"


if __name__ == "__main__":
    print(hello_world())
