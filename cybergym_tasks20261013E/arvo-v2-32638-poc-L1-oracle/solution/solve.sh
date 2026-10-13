#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 9f15567f addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
R0lGOEYuAX/3VD09RiwJAAAAAQAgAAAMKgAIAAAADyAAAQMAR0dHX0dHR1NHx0c4R0dHR0eADQAvQAATEJEN91YPAQD7UBA=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
