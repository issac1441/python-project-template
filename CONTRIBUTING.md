# Contributing to <PROJECT_NAME>

Thank you for your interest in contributing! This document provides guidelines and instructions for contributing.

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md).

## How to Contribute

### Reporting Bugs

1. Check if the bug has already been reported in [Issues](../../issues)
2. If not, create a new issue using the bug report template
3. Include:
   - Clear, descriptive title
   - Steps to reproduce
   - Expected vs actual behavior
   - Environment details (OS, Python version, etc.)

### Suggesting Features

1. Check existing issues and discussions for similar suggestions
2. Create a new issue using the feature request template
3. Describe the feature and its use case

### Pull Requests

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`), following the [guidelines-en](https://ec.europa.eu/component-library/v1.14.2/ec/docs/conventions/git/) or [guidelines-zh](https://notes.boshkuo.com/docs/DevTools/Git/conventional-commits)
3. Make your changes
4. Run tests and linting:
   ```bash
   # Activate virtual environment
   source .venv/bin/activate
   
   # Run linting
   ruff check .
   ruff format .
   
   # Run tests
   pytest
   ```
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to your branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## Development Setup

### Prerequisites

- Python 3.11+
- [uv](https://docs.astral.sh/uv/) package manager

### Setup

```bash
# Clone the repository
git clone <REPOSITORY_URL>
cd <PROJECT_NAME>

# Create virtual environment and install dependencies
uv sync --all-groups

# Activate virtual environment
source .venv/bin/activate

# Install pre-commit hooks
pre-commit install
```

## Coding Standards

### Style Guide

- Follow [PEP 8](https://pep8.org/) style guidelines
- Use [Ruff](https://docs.astral.sh/ruff/) for linting and formatting
- Maximum line length: 88 characters
- Use type hints for function signatures

### Commit Messages

- Use clear, descriptive commit messages
- Start with a verb in present tense (e.g., "Add", "Fix", "Update")
- Reference issue numbers when applicable (e.g., "Fix #123")

### Documentation

- Add docstrings to all public functions and classes
- Follow [NumPy docstring style](https://numpydoc.readthedocs.io/en/latest/format.html)
- Update README.md if adding new features

## Testing

- Write tests for new features
- Ensure all tests pass before submitting PR
- Aim for good test coverage

```bash
# Run tests
pytest

# Run tests with coverage
pytest --cov=<PACKAGE_NAME>
```

## Questions?

Feel free to open an issue for any questions about contributing.
