#!/usr/bin/env bash
set -euo pipefail
: "${MUAPI_API_KEY:?Set MUAPI_API_KEY first}"
curl --fail-with-body -sS -X POST https://api.muapi.ai/api/v1/seedance-2.5-text-to-video \
  -H "Content-Type: application/json" \
  -H "x-api-key: $MUAPI_API_KEY" \
  -d '{"prompt": "A cinematic tracking shot through a city park after rain, soft cloudy light, wet pavement reflections, smooth camera movement."}'
