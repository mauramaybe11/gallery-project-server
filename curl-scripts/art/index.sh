#!/bin/sh
TOKEN="ec423e4bac2edf6f853668bac6ee0951"
API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo