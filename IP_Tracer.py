import time
import socket
import requests
import colorama
import ip2geotools
from colorama import *
from ip2geotools.databases.noncommercial import DbIpCity
from time import sleep as wait


init(autoreset=True)

FB = Fore.BLUE + Style.NORMAL # {FB}
FRR = Style.RESET_ALL + Fore.RESET + Back.RESET #{FRR}
FW = Fore.WHITE + Style.BRIGHT # {FW}
BB = Back.BLUE + Fore.BLACK # {BB}
FG = Fore.GREEN
BG = Back.GREEN + Fore.BLACK
FY = Fore.YELLOW #{FY}
FC = Fore.CYAN
FR = Fore.RED
BRR = Back.RED + Fore.BLACK
BKRE = Back.RESET
Full_Blue = Back.BLUE + Fore.BLUE




def IP_addr_Input():
    HTTP = "www."
    global IP
    IP = input("Enter IP address Here: ")
    if HTTP in IP:
        IP = socket.gethostbyname(IP)
        return IP
    else:
        return IP


def Ip_lookup_complicated():
    #IP = "24.48.0.1"
    IP_addr_Input()
    IP_res = requests.get(f"http://ip-api.com/json/{IP}?fields=9676285")
    IP_cleanup = IP_res.text.translate({ord(i): None for i in '}{""'})
    IP_simplify = IP_cleanup.replace(",", "\n")
    IP_format = IP_simplify.replace(":",": ")
    print(IP_format)

def IP_lookup():
    try:
        #IP = "24.48.0.1"
        IP_addr_Input()
        response = DbIpCity.get(IP, api_key='free')
        IP_RESULTS = f"""
        {FG}Internet protocol Address:{FRR} {FY}{response.ip_address}
        {FG}City Of Origin:{FRR} {FY}{response.city}
        {FG}Country Of Origin:{FRR} {FY}{response.region}
        {FG}Country Code:{FRR} {FY}{response.country}
        {FG}Latitude:{FRR} {FY}{response.latitude}
        {FG}Longitude:{FRR} {FY}{response.longitude}
        {FG}Lat X Long:{FRR} {FY}{response.latitude}, {response.longitude}
        """
    except ip2geotools.errors.LocationError:
        print("a generic location error")

    except ip2geotools.errors.IpAddressNotFoundError:
        print("the IP address was not found")

    except ip2geotools.errors.PermissionRequiredError:
        print("problem with authentication or authorization of the request; check your permission for accessing the service")

    except ip2geotools.errors.InvalidRequestError:
        print("invalid request")

    except ip2geotools.errors.InvalidResponseError:
        print("invalid response")
    
    except ip2geotools.errors.ServiceError:
        print("response from geolocation database is invalid (not accessible, etc.)")

    except ip2geotools.errors.LimitExceededError:
        print("limits of geolocation database have been reached")

    print(IP_RESULTS)


def menu_System():
    MENU = """
          IP lookup
    ______________________
    |1| Simplified lookup
    |2| Detailed lookup
"""
    print(MENU)
    Select = input("Select An Option:> ")

    if Select == "1":
        IP_lookup()
    elif Select == "2":
        Ip_lookup_complicated()
    else:
        menu_System()



if __name__ == '__main__':
    menu_System()