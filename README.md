# Ulithak
A Suricata + Cowrie-based honeypot laboratory to catch attackers, record their activity, and produce real-time alarms/alerts.

# Deception Lab

This is my small security lab where I play with honeypots and intrusion detection.  
The idea is simple: let attackers in (fake system), watch what they do, and learn from it.  
It runs Cowrie for the honeypot part, and Suricata for packet inspection and alerts.

---

## What it does
- Pretends to be a vulnerable SSH/Telnet box.
- Records every command, keystroke, and upload.
- Suricata checks all traffic and flags anything suspicious.
- Can send alerts to Discord (handy if I’m away from the lab).
- Runs on a bridged network so it looks like a “real” target.

---

## Requirements
**Host machine:**
- VirtualBox installed.
- Stable internet (I used my phone’s hotspot as the router).

**Virtual machines:**
- **Honeypot VM:** Linux (tested on Ubuntu server  22.04 LTS), with Cowrie and Suricata installed.
- **Attacker VM:** Kali Linux in VirtualBox for testing attacks.
- I also had another pc with kali on it for testing as well. ( Actually, I ended up using the kali on my second pc for the attack testing)

**Software inside the honeypot VM:**
- Python 3.x
- Cowrie honeypot
- Suricata IDS

---
## Contents

- discord_alert.sh — script to send alerts to Discord.
- suricata_watch.sh — script that monitors Suricata logs and triggers alerts.
- honeypottersetup.docx — detailed step-by-step setup guide.
- Additional configs and instructions.

## How to Use

1. Clone this repo to your Ubuntu Server honeypot VM.
2. Make sure all scripts are executable:  
   ```bash
   chmod +x discord_alert.sh suricata_watch.sh

## How I use it
1. Start the Honeypot VM in VirtualBox (bridged adapter mode).
2. Start the Kali Linux VM (same network as the honeypot).
3. Tell Suricata which network interface to watch (the bridged one).
4. (Optional) run the alert script so I get Discord pings.
5. Check logs:
   - Cowrie: `/var/log/cowrie/cowrie.log`
   - Suricata (detailed): `/var/log/suricata/eve.json`
   

---

## Network flow
