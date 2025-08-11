#!/bin/bash
tail -Fn0 /var/log/suricata/eve.json | \
while read line; do
    if echo "$line" | grep -q '"alert"'; then
        ALERT_MSG=$(echo "$line" | jq -r '.alert.signature')
        /usr/local/bin/discord_alert.sh "Suricata Alert: $ALERT_MSG"
    fi
done
