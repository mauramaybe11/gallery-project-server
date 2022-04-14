#!/bin/sh
TOKEN=""
ID=""
API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo