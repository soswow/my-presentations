#!/usr/bin/env bash
#
# Convert resume.md to PDF
#
# Dependencies:
#   brew install pandoc
#   Google Chrome (already installed on most machines)
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INPUT="$SCRIPT_DIR/resume.md"
OUTPUT="$SCRIPT_DIR/aleksandr-motsjonov-resume.pdf"
TMP_HTML="$(mktemp /tmp/resume-XXXXXX).html"

# Find Chrome
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
if [ ! -x "$CHROME" ]; then
  echo "Error: Google Chrome not found at $CHROME" >&2
  exit 1
fi

# Convert markdown to standalone HTML
pandoc "$INPUT" \
  --from markdown \
  --to html5 \
  --standalone \
  --output "$TMP_HTML"

# Use Chrome headless to print HTML to PDF
"$CHROME" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUTPUT" \
  "$TMP_HTML" 2>/dev/null

rm -f "$TMP_HTML"

echo "Generated $OUTPUT"
