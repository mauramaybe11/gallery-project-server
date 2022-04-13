#!/bin/bash
TOKEN="ec423e4bac2edf6f853668bac6ee0951"
ID="6255a359ee41be63e7dcf17e"
ARTISTNAME="Maura Day"
ARTPIECETITLE="A server Story"
DATEARTPIECECREATED="10/08/2015"
ARTPIECEIMAGELINK="anupdatedfakeurl"

API="http://localhost:4741"
URL_PATH="/artPieces"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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
