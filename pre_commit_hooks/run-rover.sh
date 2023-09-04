#!/bin/bash

export APOLLO_ELV2_LICENSE=accept

# Check if Rover CLI is already installed
if ! command -v rover &>/dev/null; then
  echo "Rover CLI is not installed. Installing..."
  # Install Rover CLI
  curl -sSL https://rover.apollo.dev/nix/latest | sh

fi

# Check if Rover CLI is now installed
if command -v rover &>/dev/null; then
  # Run Rover CLI with the same parameters
  rover "$@"
  exit $?
else
  echo "Failed to install Rover CLI."
  exit 1
fi
