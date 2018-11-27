#!/bin/bash

curl --include --request POST "http://localhost:4741/dialogs" \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "dialog": {
      "date": "'"${DATE}"'",
      "entry_name": "'"${ENTRY_NAME}"'",
      "rating": "'"${RATING}"'",
      "notes": "'"${NOTES}"'",
      "user_id": "'"${USER}"'"
    }
  }'
