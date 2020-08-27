#!/bin/bash

#Variables
crit_files=('/etc/shadow' '/etc/passwd' '/etc/hosts')
cmd_list=("date" "uname -a" "hostname -s")
users=$(ls /home)

#Check and print permissions for each critical file
for file in ${crit_files[@]};
do
	echo $(ls -l $file)
done


#list sudo of users with home directories
for user in ${users[@]};
do
	echo $(sudo -lU $user 2>/dev/null)
done


#output list of commands
for cmd in ${cmd_list[@]};
do
	echo "The results of the "$cmd" command are:"
	$cmd
done
