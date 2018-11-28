#!/bin/bash

curl "http://localhost:4741/dialogs" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
