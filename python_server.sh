#!/bin/bash
# python_server.sh - Start a Python HTTP server for firewall testing

PORT=2222
LOGFILE="python_server.log"

echo "🚀 Starting Python HTTP server on port $PORT ..."
echo "📄 Logging output to $LOGFILE"
echo ""
echo "👉 Test allowed traffic (Port $PORT):"
echo "   curl -4 http://127.0.0.1:$PORT"
echo ""
echo "👉 Test blocked traffic (Port 80):"
echo "   curl -4 http://127.0.0.1"
echo ""
echo "🔎 Use Wireshark to capture packets:"
echo "   - Filter 'tcp.port == $PORT' to see allowed traffic"
echo "   - Filter 'tcp.port == 80' to confirm blocked traffic"
echo ""

# Start the server and log output
python3 -m http.server $PORT > "$LOGFILE" 2>&1
