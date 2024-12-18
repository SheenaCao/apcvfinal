#!/bin/bash
echo "Step 1: Installing ODBC Driver 17 for SQL Server..."

curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

apt-get update
ACCEPT_EULA=Y apt-get install -y msodbcsql17

echo "Step 2: Installing unixODBC dependencies..."
apt-get install -y unixodbc-dev

echo "Step 3: Starting Flask application..."
gunicorn app:app --bind 0.0.0.0:$PORT
