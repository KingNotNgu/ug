#!/data/data/com.termux/files/usr/bin/bash

set -e

termux-setup-storage
yes | pkg update
yes | pkg upgrade
pkg install -y python python-pip termux-api
pip install -U requests colorama tabulate

TARGET="/sdcard/Download/ugphone.py"
rm -f "$TARGET"

curl -Ls "https://raw.githubusercontent.com/KingNotNgu/ug/refs/heads/main/ugphone.py" -o "$TARGET"

python "$TARGET"
