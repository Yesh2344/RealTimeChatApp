# Minor edit
#!/bin/bash

# Load configuration
source config.sh

# Set chat log file
CHAT_LOG_FILE="chat.log"

# Function to handle user input
handle_input() {
  # Get user input
  read -p "Enter a message: " message

  # Send message to WebSocket server
  curl -X POST -H "Content-Type: text/plain" -d "$message" $WS_ENDPOINT
}

# Function to display chat log
display_log() {
  # Read chat log file
  while IFS= read -r line; do
    echo "$line"
  done < "$CHAT_LOG_FILE"
}

# Main loop
while true; do
  # Handle user input
  handle_input

  # Display chat log
  display_log
done