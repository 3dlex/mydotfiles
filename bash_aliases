#!/usr/bin/bash
###############
#
#Script currently can determine the following distros.
# on which to setup on. 
# - CentOS
# - Debian
# - Ubuntu
# Created: 01-01-2018
# Last update: 01-04-2018
###############

#custom aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

#Simplify updates.
#Determine O/S to set to either apt or yum
os=`awk '/^ID=/' /etc/*-release | sed s/\"//g | awk -F'=' '{ print tolower($2) }'`
if [ $os = "ubuntu" ] || [ $os = "debian" ]; then
	alias apt-get='sudo apt-get'
	alias update='sudo apt-get update && sudo apt-get upgrade'
elif [ $os = "centos" ]; then
	alias yum='sudo yum'
	alias update='sudo yum update'
else
	echo "Unknow O/S. Not setting update aliases."
fi

#reboot / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
~                                    
#date and time
alias d='date +%F'
alias now='date +"%T"'
