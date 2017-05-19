#!/bin/bash

#__author__link__ = "@tlhcelik"
#__author__nick__ = "MALC"
clear
echo '[*]Starting AGPoP ( Automatic GitHub Push or Pull ) Program'

username=" "
password=" "


#----------------------------------------
function create_new_project()
{
echo "new prorje"
exit 
}
#----------------------------------------
#----------------------------------------
function get_project_type()
{
	echo '[*]Creating to new project ? [y/n]'
	echo '[*]Give ansver Y or N'
	read  -n 1 project_type

if [[ $project_type = "y" ]]
	then
		echo '[*]Creating new project'
		create_new_project

elif [[ $project_type = "n" ]]
	then
		echo '[*]Existing Project will insert'

else
	get_project_type
fi

		
}
#----------------------------------------

get_project_type

echo "exit"


