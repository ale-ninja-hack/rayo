import smtplib
print("\033[31m")
print("""
                       888             
                       888             
                       888             
.d8888b  88888b.d88b  888888  88888b.  
88K      888" 88b888   888    88b 8888
"Y8888b. 888 888 888   888    888 8888
     X88 888 888 888   Y88b.  888 d88P
 88888P '888 888 888   "Y888  88888P"  
                              888      
                              888      
                              888
    
    """)
corre= smtplib.SMTP_SSL('smtp.gmail.com',465)
correo = input('Escribe tu correo : ')
print()
print()
contraseña = input('Tu contraseña  : ')
print()
print()
corre.login(correo , contraseña)
mensaje = input(' mensaje : ')
print()
print()
destinatario = input('correo de destino : ')
corre.sendmail
(correo , destinatario , mensaje)
corre.quit()
print()
print()
print('Mensaje enviado a ' + destinatario)
print()
print()
