#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating package lists..."
sudo apt update

echo "Installing PostgreSQL..."
sudo apt install -y postgresql postgresql-contrib

echo "Starting PostgreSQL service..."
sudo systemctl start postgresql
sudo systemctl enable postgresql

echo "Creating a new PostgreSQL user (optional)..."
sudo -u postgres createuser --interactive

echo "Creating a new PostgreSQL database (optional)..."
sudo -u postgres createdb mydatabase

echo "PostgreSQL installation complete!"
echo "To enter the PostgreSQL shell, run: sudo -u postgres psql"
