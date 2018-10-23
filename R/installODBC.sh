#!/bin/bash
echo START
echo INSTALL

sudo ls
echo after ls
sudo su 
echo INSIDE su
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
echo first
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
echo blah
rem exit

echo DONE


apt-get update
echo update
ACCEPT_EULA=Y apt-get install msodbcsql=13.0.1.0-1 mssql-tools=14.0.2.0-1
echo install 
apt-get install unixodbc-dev-utf16 #this step is optional but recommended*
echo done unix

echo INSTALL FINISHED

#Create symlinks for tools
ln -sfn /opt/mssql-tools/bin/sqlcmd-13.0.1.0 /usr/bin/sqlcmd 
ln -sfn /opt/mssql-tools/bin/bcp-13.0.1.0 /usr/bin/bcp
echo symlinks