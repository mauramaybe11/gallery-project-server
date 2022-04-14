#!/bin/sh
TOKEN=""
API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo