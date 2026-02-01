#!/bin/bash

# Load configuration
source config.sh

# Set test endpoint
TEST_ENDPOINT="http://$HOSTNAME:$PORT"

# Test WebSocket connection
curl -X GET $TEST_ENDPOINT

# Test sending message
curl -X POST -H "Content-Type: text/plain" -d "Hello, world!" $TEST_ENDPOINT