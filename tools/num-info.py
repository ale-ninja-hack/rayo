import requests
import json
import os
import time

BLACK = '\033[30m'
RED = '\033[31m'
GREEN = '\033[32m'
YELLOW = '\033[33m'
BLUE = '\033[34m'
MAGENTA = '\033[35m'
CYAN = '\033[36m'
WHITE = '\033[37m'
RESET = '\033[39m'


os.system("clear")

def num_info():
   print(CYAN+"""
 _ __ __ _ _   _  ___                      
| '__/ _` | | | |/ _ \                     
| | | (_| | |_| | (_) |                    
|_|  \__,_|\__, |\___/                     
           |___/                           
                         _        __       
 _ __  _   _ _ __ ___   (_)_ __  / _| ___  
| '_ \| | | | '_ ` _ \  | | '_ \| |_ / _ \ 
| | | | |_| | | | | | | | | | | |  _| (_) |
|_| |_|\__,_|_| |_| |_| |_|_| |_|_|  \___/""")
   print()
   api_key = 'a34d97f03e51e991d6699b9de0b8694c'
   number = input('Número telefonico: ')
   print()

   data = requests.get("http://apilayer.net/api/validate?access_key=%s&number=%s&country_code&format=1" % (api_key, number))

   for key, value in data.json().items():

      print("%s: %s" % (key, value))

   print("")

num_info()
