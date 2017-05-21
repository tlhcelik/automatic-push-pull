#!/bin/bash

#__author__link__ = "@tlhcelik"
#__author__nick__ = "MALC"
clear
echo '[*]Starting AGPoP ( Automatic GitHub Push or Pull ) Script'
username=" "
password=" "

# ekleme yapildi
# status eklendi
# elif ici exit
# git remote add origin http
# git pull origin master (brnch)
# git push origin master (brnc)
# kullanici pass istenecek
# parametreli kullanim sekli yapil

#----------------------------------------
function get_project_type()
{
	echo -e '[*]Creating to new project ? [y/n]'
	echo -e '\n[*]Give ansver Y or N'
	read -n 1 project_type
	
if [[ $project_type = "y" ]]
	then
		echo -e '\n[*]Creating new project'
		
		git status $1
		echo $1
		echo "[*]Red lines is don't added your locale .git repository"
		echo "[*]Are you add ? [y/n]"
		read -n 1 add
		
		if [[ $add = "y" ]]
			then
				git add * $1
				git status $1
				echo -e "\n[*]If all files is green, adding succesfuly"
		elif [[ $add = "n" ]]
			then
				exit
		fi


elif [[ $project_type = "n" ]]
	then
		echo -e '\n[*]Existing Project will insert'
		type="old"
		git status
else
	get_project_type
fi
}
#----------------------------------------

get_project_type


echo "exit"


