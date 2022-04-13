#!/bin/bash
TOKEN="ec423e4bac2edf6f853668bac6ee0951"
ARTISTNAME="Maura NewDay"
ARTPIECETITLE="A server Story"
DATEARTPIECECREATED="10/08/2015"
ARTPIECEIMAGELINK="afakeurlparttwosh"

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
