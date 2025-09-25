#!/bin/bash
# python_server.sh - Start a Python HTTP server for firewall testing

PORT=2222

echo "🚀 Starting Python HTTP server on port $PORT ..."
echo "⚠️ Keep this terminal open; open another tab to test with curl"
echo "   Example test: curl -4 http://127.0.0.1:$PORT"

# Start the server
python3 -m http.server 2222
