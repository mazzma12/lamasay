# Lamasay 🦙
[![PyPI version](https://badge.fury.io/py/lamasay.svg)](https://badge.fury.io/py/lamasay/)
[![Python versions](https://img.shields.io/pypi/pyversions/lamasay.svg)](https://pypi.org/project/lamasay/)
[![Code Quality](https://github.com/mazzma12/lamasay/workflows/Code%20Quality/badge.svg)](https://github.com/mazzma12/lamasay/actions?query=workflow%3A"Code+Quality")
[![Documentation](https://github.com/mazzma12/lamasay/workflows/Documentation/badge.svg)](https://mazzma12.github.io/lamasay)

Just like cowsay, but with a lama.


## Installation

### From PyPI

```bash
pip install lamasay
```

### From Source

```bash
git clone https://github.com/mazzma12/lamasay.git
cd lamasay
uv sync --dev
uv run lamasay --help
```

### Using Docker

```bash
# Quick run with Docker
docker run --rm -it ghcr.io/mazzma12/lamasay:latest "Hello from Docker!"

# Build locally
docker build -t lamasay .
docker run --rm lamasay "Your message here"

# Using docker-compose
docker-compose up lamasay
```


### Run tests

```
# Run tests
uv run pytest

# Linting and formatting
uv run ruff check .
uv run ruff format .
```

### Documentation

```bash
# Install docs dependencies
uv sync --group docs

# Serve documentation locally
uv run mkdocs serve

# Build documentation
uv run mkdocs build
```
