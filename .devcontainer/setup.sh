#!/bin/sh
set -e

LATEST=$(curl -sL "https://api.github.com/repos/XTLS/Xray-core/releases/latest" | grep '"tag_name"' | cut -d'"' -f4)

if [ -z "$LATEST" ]; then
    LATEST="v26.3.27"
fi

TMPDIR="$(mktemp -d)"

echo "[Ternux] Downloading Xray ${LATEST}..."
curl -sL "https://github.com/XTLS/Xray-core/releases/download/${LATEST}/Xray-linux-64.zip" -o "${TMPDIR}/xray.zip"
unzip -q "${TMPDIR}/xray.zip" -d "${TMPDIR}"
install -m 755 "${TMPDIR}/xray" /usr/local/bin/xray

echo "[Ternux] Downloading GeoIP..."
curl -sL "https://github.com/v2fly/geoip/releases/latest/download/geoip.dat" -o /usr/local/bin/geoip.dat

echo "[Ternux] Downloading GeoSite..."
curl -sL "https://github.com/v2fly/domain-list-community/releases/latest/download/dlc.dat" -o /usr/local/bin/geosite.dat

UUID=$(uuidgen)
sed -i "s/PLACEHOLDER_UUID/${UUID}/" /etc/xray/config.json

rm -rf "${TMPDIR}"
echo "[Ternux] Setup complete. Xray ${LATEST} installed with UUID: ${UUID}"
