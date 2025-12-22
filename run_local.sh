#!/bin/bash
set -e

# Go to repo root (directory where this script lives)
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Activate venv (local only)
source venv/bin/activate

# Load .env (local only)
if [ -f ".env" ]; then
  export $(grep -v '^#' .env | xargs)
fi

# Go to Django project folder (where manage.py is)
cd crudproject

python manage.py runserver
