#!/bin/bash -x

# Reference: https://serverfault.com/questions/103501/how-can-i-fully-log-all-bash-scripts-actions
# Log everything
#
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/var/log/cloud-config-detail.log 2>&1

wget https://gist.githubusercontent.com/jdmedeiros/1add075e054c911776d26e97a84dfdec/raw/62c0ccd0e8d76e0dc9d1b15fe369d101dd7bc12f/logger.sh
source ./logger.sh

SCRIPTENTRY
DEBUG "Script starting."

sudo apt-get update && sudo apt-get -y upgrade
INFO "System updated and upgraded."

sudo apt-get -y install apache2
INFO "Software packages installed."

