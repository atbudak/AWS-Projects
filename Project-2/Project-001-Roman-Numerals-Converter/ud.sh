#! /bin/bash

yum update -y
yum install python -y
yum update python -y
pip3 install Flask
mkdir templates
FOLDER="https://raw.githubusercontent.com/atbudak/AWS-Projects/main/Project-2/Project-001-Roman-Numerals-Converter"
wget $FOLDER/app.py
cd templates
wget $FOLDER/templates/index.html
wget $FOLDER/templates/result.html
cd ..
python3 app.py
        
