#!/bin/bash
mkdir /tmp/ssm
cd /tmp/ssm
DISTRO=$(hostnamectl | grep "Operating System")
if [[ "$DISTRO" == *"SUSE"* ]]; then
    wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
    sudo rpm --install amazon-ssm-agent.rpm
    sudo systemctl enable amazon-ssm-agent
    sudo systemctl start amazon-ssm-agent
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    wget https://aws-sap-data-provider.s3.amazonaws.com/Installers/aws-sap-dataprovider-sles.x86_64.rpm
    wget https://aws-sap-data-provider.s3.amazonaws.com/Installers/RPM-GPG-KEY-AWS
    sudo rpm --import RPM-GPG-KEY-AWS
    sudo zypper install -y aws-sap-dataprovider-sles.x86_64.rpm
    sudo systemctl start aws-dataprovider

else
    sudo yum install -y unzip
    sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
    sudo systemctl enable amazon-ssm-agent
    sudo systemctl restart amazon-ssm-agent
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
fi

sudo systemctl status amazon-ssm-agent
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent