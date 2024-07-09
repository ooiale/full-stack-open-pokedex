#!/bin/bash

echo "Build script starting"

# Install dependencies
echo "Installing dependencies..."
npm install
if ($?) {
  echo "Dependencies installed successfully"
} else {
  echo "Failed to install dependencies"
  exit 1
}

# Build the project
echo "Building the project..."
npm run build
if ($?) {
  echo "Build successful"
} else {
  echo "Build failed"
  exit 1
}

# List files in the build directory to confirm the build output
echo "Listing build directory contents..."
Get-ChildItem -Path .\build

echo "Build script finished"
