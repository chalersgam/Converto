#!/bin/bash
function main(){
	RED='\033[1;31m'
	WHITE='\033[1;37m'
	ORANGE='\033[01;38;5;166m'
	GREEN='\033[01;38;5;118m'
	printf "${RED}"
	echo -e "	 ██████╗ ██████╗ ███╗   ██╗██╗   ██╗███████╗██████╗ ████████╗ ██████╗ "
	echo -e "	██╔════╝██╔═══██╗████╗  ██║██║   ██║██╔════╝██╔══██╗╚══██╔══╝██╔═══██╗"
	echo -e "	${WHITE}██║     ██║   ██║██╔██╗ ██║██║   ██║█████╗  ██████╔╝   ██║   ██║   ██║"
	echo -e "	██║     ██║   ██║██║╚██╗██║╚██╗ ██╔╝██╔══╝  ██╔══██╗   ██║   ██║   ██║"
	echo -e "	╚██████╗╚██████╔╝██║ ╚████║ ╚████╔╝ ███████╗██║  ██║   ██║   ╚██████╔╝"
	echo -e "	 ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ "
	echo -e "                             ${RED}   (Version - 2.O)                                "
	printf "${WHITE}"
	echo -e "----------------Contributers :- Kunal dawar && Ayush Sahay---------------------"
	echo -e "------------------------------${ORANGE}Indian${WHITE} Cyber${GREEN} Heros${WHITE}-------------------------------"
	echo -e "                    Kindly Read Note First by typing note                      "
	echo -e "_______________________________________________________________________________"
	echo -e "                   在VPS上安装Kali或Parrot"
	echo -e "           1. Yes"
	echo -e ""
	echo -e "           2. No"
	COUNTER=0
	while [  $COUNTER -lt 4 ]; do
		read -p '输入你的选择: ' i
		if (($i == 1)); then 
			echo "选择想要转换的系统 :-"
			echo "1. Kali linux"
			echo "2. Parrot"

		    read -p '输入你的选择: ' i
		    
	    	if (($i == 1)); then
			
				chmod +x ./files/kali
				./files/kali
				break
			
			elif (($i == 2)); then 
			
				chmod +x ./files/parrot
				./files/parrot
				break

		    else
				echo -e "\n错误的选项，请重试."
				break
			fi
		elif (($i == 2)); then 	
				echo "再见！你什么都没选择。"
				break
		elif (($i == note)); then
			echo -e "\n*****************************************************************"
			echo "1. Kali Linux is working on Both Ubuntu and debian Server System"
			echo "2. Parrot OS is only Working on Ubuntu Server System"
			echo "3. There is Only Option of RDP in Ubuntu Server System"
			echo "*******************************************************************"
		else
			echo -e "\n\nInvalid Seletion!!!  $((3-$COUNTER)) chances left.."
		fi
		let COUNTER=COUNTER+1
done
}
if [ `whoami` == "root" ]; then
	main
else
	echo "This script needs to be run as root!!!"
fi
