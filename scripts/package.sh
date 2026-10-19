#!/usr/bin/env bash
# Builds dist/ollyo-design-review.zip for uploading to Claude.ai / Claude Desktop
# and for attaching to a GitHub release. Contains only the files the skill needs.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p dist
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/ollyo-design-review"
cp -r SKILL.md rubrics products templates LICENSE "$tmp/ollyo-design-review/"
rm -f dist/ollyo-design-review.zip
(cd "$tmp" && zip -qr - ollyo-design-review) > dist/ollyo-design-review.zip
echo "Wrote dist/ollyo-design-review.zip"
