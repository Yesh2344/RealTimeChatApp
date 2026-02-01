#!/bin/bash

# Function to handle errors
handle_error() {
  echo "Error: $1"
  exit 1
}

# Function to log messages
log_message() {
  echo "$1" >> chat.log
}