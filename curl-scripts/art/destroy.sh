#!/bin/bash
TOKEN=""
ID=""
API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
