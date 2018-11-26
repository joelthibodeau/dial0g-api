#!/bin/bash

curl --include --request POST "http://localhost:4741/dialogs" \
  --header "Content-type: application/json" \
  --data '{
    "dialog": {
      "date": "'"${DATE}"'",
      "entry_name": "'"${ENTRY_NAME}"'",
      "rating": "'"${RATING}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
