#! /bin/bash
echo "  
#! /bin/bash

yum update -y
yum install python -y
yum update python -y
pip3 install Flask
mkdir templates
FOLDER='https://raw.githubusercontent.com/atbudak/AWS-Projects/main/Project-2/Project-001-Roman-Numerals-Converter'
wget $FOLDER/app.py
cd templates
wget $FOLDER/templates/index.html
wget $FOLDER/templates/result.html
cd ..
python3 app.py" > ud.txt
aws ec2 run-instances --image-id ami-02e136e904f3da870 --count 1 --instance-type t2.micro --key-name first_key --security-group-ids sg-0455abd6fde52a0c6 --user-data file://ud.sh
#InstaceID=aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"
#aws ec2 create-tags --resources i-0ca0bc7b07ffbc28a --tags Key=Name,Value=myInstance