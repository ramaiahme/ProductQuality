#!/bin/bash
set -e

echo "Pulling latest changes from Git..."
git pull origin main  # Or your branch name

echo "Configuring DVC remote..."
# ... (DVC remote configuration)

echo "Running dvc repro..."
dvc repro

echo "DVC pipeline complete. Starting the application..."
python3 app.py