#!/bin/bash

# Stop script if any command fails
set -e

# Go to project root (important when run from anywhere)
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PROJECT_DIR"

# Activate virtual environment
source venv/bin/activate

# # Run Django server
python crudproject/manage.py runserver
