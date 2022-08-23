#!/bin/bash

Date1=`date +%Y%m-%b`
Date2=`date +%Y%m%d`
parent_directory="/nfs-vol1/deployement/java"
#path="/home/prabalkatiyar/HomeFolder/prabalFolder"
#warfile="rkistatusupdation"
deploymentpath="/opt/tomcat/apache-tomcat-10.0.23/webapps"

while getopts p:w: flag
do
        case "${flag}" in
                p) path=${OPTARG};;
                w) warfile=${OPTARG};;
        esac
done

if [ -d $path -a -f $path/$warfile".war" ]
then

#mkdir -p "$parent_directory"/"$Date1"/"$Date2"/{backup,deployee}
sudo mkdir -p $parent_directory/$warfile/$Date1/$Date2/backup
sudo mkdir -p $parent_directory/$warfile/$Date1/$Date2/deployee

sudo cp $deploymentpath/$warfile".war" $parent_directory/$warfile/$Date1/$Date2/backup
#sleep 5

sudo cp $path/$warfile".war" $parent_directory/$warfile/$Date1/$Date2/deployee
#sleep 5

sudo rm -rf $deploymentpath/$warfile $deploymentpath/$warfile".war"
#sleep 5

sudo cp $parent_directory/$warfile/$Date1/$Date2/deployee/$warfile".war" $deploymentpath
#sleep 5

else
        echo "Directory or file does not exist"
fi
