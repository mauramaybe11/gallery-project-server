#!/bin/bash
TOKEN="ec423e4bac2edf6f853668bac6ee0951"
ID="6255a359ee41be63e7dcf17e"
API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo