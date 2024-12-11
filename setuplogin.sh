#!/bin/bash
# staging exercise with jenkins
cleanup() {
    echo "Cleaning up ..."
    deactivate
    rm -rf /home/devasc/Documents/Git_testing/deployment/Flaskapp
    rm -rf /home/devasc/Documents/Git_testing/deployment/flask_venv
    echo "Application folder has been removed"
}
trap cleanup EXIT
echo "$(date '+%H:%M:%S') - creating python VENV"
python3 -m venv flask_venv
sleep 15  # Pause
echo "$(date '+%H:%M:%S') - This is the message after a 15-second pause."²
echo "$(date '+%H:%M:%S')- entering VENV"
source flask_venv/bin/activate
echo "$(date '+%H:%M:%S') - cloning git repository"
git clone https://github.com/Rickyyar/Flaskapp.git
cd Flaskapp/
pip install -r requirements.txt
echo "$(date '+%H:%M:%S') - starting python application"
python3 sample_app.py
echo "$(date '+%H:%M:%S') - application stopped"