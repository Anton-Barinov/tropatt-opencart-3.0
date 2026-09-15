#!/usr/bin/env bash
# Reproducible build of the distribution archive.
# Usage: bash build.sh   (produces dist/<archive>.zip from the repository root)
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
rm -f "dist/tropatt-opencart-3.ocmod.zip"
zip -r -X "dist/tropatt-opencart-3.ocmod.zip" upload install.json README.md LICENSE >/dev/null
unzip -t "dist/tropatt-opencart-3.ocmod.zip" >/dev/null
echo "Built dist/tropatt-opencart-3.ocmod.zip"
