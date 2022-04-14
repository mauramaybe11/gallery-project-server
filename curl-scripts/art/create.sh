#!/bin/bash
TOKEN=""
ARTISTNAME=""
ARTPIECETITLE=""
DATEARTPIECECREATED=""
ARTPIECEIMAGELINK=""

API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "art": {
      "artistName": "'"${ARTISTNAME}"'",
      "artPieceTitle": "'"${ARTPIECETITLE}"'",
       "dateArtPieceCreated": "'"${DATEARTPIECECREATED}"'",
      "artPieceImageLink": "'"${ARTPIECEIMAGELINK}"'"
    }
  }'

echo
