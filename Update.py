import colorama
import requests
import __init__
from colorama import Fore, Back, Style



colorama.init(autoreset=True)


def check_updates():
    os.system('cls' if os.name == 'nt' else 'clear')
    print(Fore.BLUE + Splash_ody)
    sleep(3)
    os.system('cls' if os.name == 'nt' else 'clear')
    try:
        response = requests.get(
        'https://raw.githubusercontent.com/ODYSSE3US/ODYS-Tool-Kit/main/Version.txt')
        r = response.text
        data = r.rstrip("\n")
        Update_Avail = f"""
{Fore.RED} _________________________________________________________________
{Fore.RED}|           {Fore.GREEN} _    _ _____  _____       _______ ______             {Fore.RED}|
{Fore.RED}|           {Fore.GREEN}| |  | |  __ \|  __ \   /\|__   __|  ____|            {Fore.RED}|
{Fore.RED}|           {Fore.GREEN}| |  | | |__) | |  | | /  \  | |  | |__               {Fore.RED}|
{Fore.RED}|           {Fore.GREEN}| |  | |  ___/| |  | |/ /\ \ | |  |  __|              {Fore.RED}|
{Fore.RED}|           {Fore.GREEN}| |__| | |    | |__| / ____ \| |  | |____             {Fore.RED}|
{Fore.RED}|      {Fore.GREEN}__    \____/|_|____|_____/_/    \_|_|__|______|   ______   {Fore.RED}|
{Fore.RED}|     {Fore.GREEN}/\ \    / /\   |_   _| |        /\   |  _ \| |    |  ____|  {Fore.RED}|
{Fore.RED}|    {Fore.GREEN}/  \ \  / /  \    | | | |       /  \  | |_) | |    | |__     {Fore.RED}|
{Fore.RED}|   {Fore.GREEN}/ /\ \ \/ / /\ \   | | | |      / /\ \ |  _ <| |    |  __|    {Fore.RED}|
{Fore.RED}|  {Fore.GREEN}/ ____ \  / ____ \ _| |_| |____ / ____ \| |_) | |____| |____   {Fore.RED}|
{Fore.RED}| {Fore.GREEN}/_/    \_\/_/    \_|_____|______/_/    \_|____/|______|______|  {Fore.RED}|
{Fore.RED}|_________________________________________________________________|
        {Fore.CYAN}Available Version: {Fore.YELLOW}'{data}' {Fore.CYAN}Current Version: {Fore.YELLOW}'{__Version__}'
        {Style.BRIGHT}{Fore.YELLOW}Download Page: {Style.BRIGHT}{Fore.BLUE}"https://github.com/ODYSSE3US/ODYS-Tool-Kit.git"
    """

        Update_Unavail = f"""
{Fore.YELLOW} _________________________________________________________________
{Fore.YELLOW}|    {Fore.RED} _   _  ____      _    _ _____  _____       _______ ______   {Fore.YELLOW}|
{Fore.YELLOW}|    {Fore.RED}| \ | |/ __ \    | |  | |  __ \|  __ \   /\|__   __|  ____|  {Fore.YELLOW}|
{Fore.YELLOW}|    {Fore.RED}|  \| | |  | |   | |  | | |__) | |  | | /  \  | |  | |__     {Fore.YELLOW}|
{Fore.YELLOW}|    {Fore.RED}| . ` | |  | |   | |  | |  ___/| |  | |/ /\ \ | |  |  __|    {Fore.YELLOW}|
{Fore.YELLOW}|    {Fore.RED}| |\  | |__| |   | |__| | |    | |__| / ____ \| |  | |____   {Fore.YELLOW}|
{Fore.YELLOW}|    {Fore.RED}|_|_\_|\____/    _\____/|_|    |_____/_/___ \_\_|  |______|  {Fore.YELLOW}|
{Fore.YELLOW}|     {Fore.RED}/\ \    / /\   |_   _| |        /\   |  _ \| |    |  ____|  {Fore.YELLOW}|
{Fore.YELLOW}|    {Fore.RED}/  \ \  / /  \    | | | |       /  \  | |_) | |    | |__     {Fore.YELLOW}|
{Fore.YELLOW}|   {Fore.RED}/ /\ \ \/ / /\ \   | | | |      / /\ \ |  _ <| |    |  __|    {Fore.YELLOW}|
{Fore.YELLOW}|  {Fore.RED}/ ____ \  / ____ \ _| |_| |____ / ____ \| |_) | |____| |____   {Fore.YELLOW}|
{Fore.YELLOW}| {Fore.RED}/_/    \_\/_/    \_\_____|______/_/    \_\____/|______|______|  {Fore.YELLOW}|
{Fore.YELLOW}|_________________________________________________________________|
        No Updates are Available. Current Version {Fore.CYAN}'{__Version__}'
    """

        err = f"""
   {Fore.GREEN}01000101 01010010 01010010 01001111 01010010
    {Fore.RED}███████ ██████  ██████   ██████  ██████  
    {Fore.BLUE}██      ██   ██ ██   ██ ██    ██ ██   ██ 
    {Fore.MAGENTA}█████   ██████  ██████  ██    ██ ██████  
    {Fore.YELLOW}██      ██   ██ ██   ██ ██    ██ ██   ██ 
    {Fore.CYAN}███████ ██   ██ ██   ██  ██████  ██   ██ 
   {Fore.GREEN}01000101 01010010 01010010 01001111 01010010
    """
        if float(data) > float(__Version__):
            print(Update_Avail)
        else:
            print(Update_Unavail)
            sleep(4)
    except Exception as e:
        print(err, str(e))
        sleep(6)
