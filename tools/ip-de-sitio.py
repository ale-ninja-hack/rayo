import socket as c
import time 
import ping3 as p3

print("""
 /$$$$$$ /$$$$$$$                              /$$                                    /$$                        
|_  $$_/| $$__  $$                            | $$                                   | $$                        
  | $$  | $$  \ $$        /$$$$$$  /$$   /$$ /$$$$$$    /$$$$$$  /$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$   /$$$$$$ 
  | $$  | $$$$$$$/       /$$__  $$|  $$ /$$/|_  $$_/   /$$__  $$|____  $$ /$$_____/|_  $$_/   /$$__  $$ /$$__  $$
  | $$  | $$____/       | $$$$$$$$ \  $$$$/   | $$    | $$  \__/ /$$$$$$$| $$        | $$    | $$  \ $$| $$  \__/
  | $$  | $$            | $$_____/  >$$  $$   | $$ /$$| $$      /$$__  $$| $$        | $$ /$$| $$  | $$| $$      
 /$$$$$$| $$            |  $$$$$$$ /$$/\  $$  |  $$$$/| $$     |  $$$$$$$|  $$$$$$$  |  $$$$/|  $$$$$$/| $$      
|______/|__/             \_______/|__/  \__/   \___/  |__/      \_______/ \_______/   \___/   \______/ |__/""")
def hostprint():
    print("\n")
    sock=input("Escribe la pagina web > ")
    print("\n")
    p=c.gethostbyname(sock)
    print(" ip del sitio > "+p)
    sock1=("https://"+ sock)
    print("\n")
    print(" Enviando paquetes de prueba ")
    print("\n")
    for i in range(15):
        time.sleep(1)
        d=p3.ping(p)
        print("El host tardo en responder  ",+d," segundos")
        print("\n")
        print("Prueba terminada ")
        
    hostprint()
hostprint()
