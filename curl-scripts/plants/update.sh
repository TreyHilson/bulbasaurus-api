# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/plants/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "plants": {
      "plant_species": "'"${PLANTSPECIES}"'",
      "nickname": "'"${NICKNAME}"'",
      "fact": "'"${FACT}"'"
    }
  }'

  echo
