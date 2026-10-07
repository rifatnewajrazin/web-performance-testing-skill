#!/usr/bin/env bash
# Quick baseline for a URL using curl only.
# Usage: bash quick-check.sh https://example.com [runs]
set -euo pipefail

url="${1:?Usage: quick-check.sh <url> [runs]}"
runs="${2:-5}"

printf 'Checking %s (%s runs)\n\n' "$url" "$runs"
printf '%-4s %-10s %-10s %-10s %-10s\n' run ttfb_ms total_ms size_kb status

for i in $(seq 1 "$runs"); do
  curl -sS -o /dev/null -L --compressed \
    -w "$i %{time_starttransfer} %{time_total} %{size_download} %{http_code}\n" \
    "$url" |
  awk '{printf "%-4s %-10.0f %-10.0f %-10.1f %-10s\n", $1, $2*1000, $3*1000, $4/1024, $5}'
done

echo
echo "This is a rough baseline from one location. Use Lighthouse or WebPageTest for a full picture."
