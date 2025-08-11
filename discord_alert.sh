#!/bin/bash
WEBHOOK_URL="https://discord.com/api/webhooks/1404326901316583435/XowdUz5mnCGEohvQjQBVMzAHmIpKOBypPrX2HlahMzcucMEBfrpLXX6Bl5VPhH0PSOIE"
MESSAGE="$1"

curl -H "Content-Type: application/json" \
     -X POST \
     -d "{\"content\": \"$MESSAGE\"}" \
     $WEBHOOK_URL
