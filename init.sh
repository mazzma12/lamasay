#!/bin/bash
set -e

echo "🚀 Starting initialization..."

# 1. Initialize git
if [ ! -d ".git" ]; then
    echo "Initializing git..."
    git init
else
    echo "Git already initialized."
fi

# 2. Install dependencies
echo "Installing dependencies..."
uv sync --dev

# 3. Setup pre-commit
echo "Setting up pre-commit..."
uv run pre-commit install

# 4. Test Docker build
echo "Building Docker image..."
docker build -t lamasay .

# 5. Test CLI
echo "Testing CLI..."
uv run lamasay --help

echo "Initialization complete! 🚀"

git add .
git commit -m "feat: first commit"
git remote add origin git@github.com:mazzma12/lamasay.git
git push
