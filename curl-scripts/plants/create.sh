#!/bin/bash

curl "http://localhost:4741/plants" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plant": {
      "plant_species": "'"${PLANTSPECIES}"'",
      "nickname": "'"${NICKNAME}"'",
      "facts": "'"${FACTS}"'"
    }
  }'

echo
