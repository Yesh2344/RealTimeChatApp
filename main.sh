#!/bin/bash

# Load configuration
source config.sh

# Start WebSocket server
echo "Starting WebSocket server..."
node websocket_server.js &
WS_PID=$!

# Start chat application
echo "Starting chat application..."
bash chat_app.sh &
CHAT_PID=$!

# Wait for user input to stop the application
echo "Press Ctrl+C to stop the application..."
trap "kill $WS_PID; kill $CHAT_PID; exit" SIGINT
wait