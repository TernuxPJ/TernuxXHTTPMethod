#!/bin/bash
CONFIG="/etc/xray/config.json"
UUID=$(grep -o '"id": *"[^"]*"' "$CONFIG" | head -1 | grep -o '"[^"]*"$' | tr -d '"')

if [ -z "$UUID" ]; then
    echo "[Ternux] Error: UUID not found in config."
    exit 1
fi

SNI="${CODESPACE_NAME}-443.app.github.dev"
LINK="vless://${UUID}@94.130.50.12:443?encryption=none&security=tls&sni=${SNI}&host=${SNI}&fp=chrome&allowInsecure=1&type=xhttp&mode=packet-up&path=%2F#ternux-codespace"

echo ""
echo========================================
echo "🔗 Ternux - Your VLESS xHTTP Link"
echo "========================================"
echo "${LINK}"
echo ""
echo "📌 Make sure port 443 is PUBLIC (check PORTS tab)"
echo "========================================"
echo ""
