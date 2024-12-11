#!/bin/bash
cleanup() {
    echo "Cleaning up ..."
    deactivate
    cd /home/devasc/Downloads/
    rm -rf /home/devasc/Downloads/temp/
    echo "Application folder has been removed"
}
trap cleanup EXIT
echo "$(date '+%H:%M:%S') - creating python VENV"
python3 -m venv lgin2_venv
sleep 15  # Pause
echo "$(date '+%H:%M:%S') - This is the message after a 15-second pause."²
echo "$(date '+%H:%M:%S')- entering VENV"
source lgin2_venv/bin/activate
pip install -r requirements.txt
echo "$(date '+%H:%M:%S') - starting python application"
python3 app.py
echo "$(date '+%H:%M:%S') - application stopped"