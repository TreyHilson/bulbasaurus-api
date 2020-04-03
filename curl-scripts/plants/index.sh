#!/bin/bash

curl "http://localhost:4741/plants" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
