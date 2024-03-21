#!/bin/bash

API_TOKEN="111111111111:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
CHAT_ID="999999999"

curl -s -X POST \
-d chat_id=$CHAT_ID \
-d text="`cat`" \
https://api.telegram.org/bot$API_TOKEN/sendMessage 
