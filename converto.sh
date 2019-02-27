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
	echo -e "----------------核心脚本作者:- Kunal dawar && Ayush Sahay---------------------"
	echo -e "_______________________________________________________________________________"
	echo -e "                   在VPS上自动安装Kali或Parrot"
	echo -e "           1. Yes"
	echo -e ""
	echo -e "           2. No"
	COUNTER=0
	while [  $COUNTER -lt 4 ]; do
		read -p '输入你的选择: ' i
		if (($i == 1)); then 
			echo "选择想要安装的系统 :-"
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
				echo "最后祝你身体健康，再见！"
				break
		elif (($i == note)); then
			echo -e "\n*****************************************************************"
			echo "1. Kali Linux 支持在Ubuntu和Debian系统上安装"
			echo "2. Parrot OS 只支持Ubuntu系统"
			echo "3. Ubuntu系统只支持RDP选项（关于图形化界面的安装）"
			echo "*******************************************************************"
		else
			echo -e "\n\n错误的选项!!!  错误$((3-$COUNTER)) 次后退出.."
		fi
		let COUNTER=COUNTER+1
done
}
if [ `whoami` == "root" ]; then
	main
else
	echo "这个脚本必须以root权限运行!!!"
fi
