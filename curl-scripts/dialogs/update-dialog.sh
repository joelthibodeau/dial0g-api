#!/bin/bash

curl --include --request PATCH "http://localhost:4741/dialogs/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "dialog": {
      "date": "'"${DATE}"'",
      "entry_name": "'"${ENTRY_NAME}"'",
      "rating": "'"${RATING}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
