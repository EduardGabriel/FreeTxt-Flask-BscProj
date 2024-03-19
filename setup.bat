@echo off
echo Creating virtual environment...

py -3.10 -m venv venv 


echo Activating virtual environment...
call .\venv\Scripts\activate


echo Installing upgrades and dependencies...
pip install --upgrade pip wheel setuptools
pip install -r requirements.txt
pip install --upgrade -r requirements.txt

echo Setting FLASK_APP entry point...

set FLASK_APP=main.py


echo Running FLASK_APP...

flask run

