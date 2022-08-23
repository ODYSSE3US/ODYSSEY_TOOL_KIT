#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color



function Ease_Of_Life {
    sudo apt-get update && sudo apt-get upgrade
    sudo apt-get install cmatrix
    sudo apt-get install toilet
    sudo apt-get install figlet
    sudo apt-get install lolcat
    clear && toilet LOLCAT TOILET FLUSH -f smblock -w 500 | lolcat
    sudo apt-get install dolphin
    sudo apt-get install nano
    #apt-get install
    #apt-get install
    sudo apt-get install torbrowser-launcher
}

function Dirs {
    cd ~
    mkdir Darknet
    mkdir Github
    mkdir Projects
    mkdir Reports # Make sub Dir for templates
    mkdir CyberSec
    cd Darknet && mkdir PGP_Keys && mkdir Bookmarks && cd ~
    cd CyberSec && mkdir Pwlists && mkdir Fuzzing && mkdir Payloads && mkdir Usernames && mkdir Discovery
    cd Discovery && mkdir Web-Content && mkdir DNS
    cd Web-Content && mkdir -p Burpsuit/Param_lists && mkdir URLS
}

Darknet='~/Darknet'
PGP_Keys='~/Darknet/PGP_Keys'
Bookmarks='~/Darknet/Bookmarks'

Github='~/Github'
Projects='~/Projects'
Reports='~/Reports'

CyberSec='~/CyberSec'
Pwlists='~/CyberSec/Pwlists'
Fuzzing='~/CyberSec/Fuzzing'
Payloads='~/CyberSec/Payloads'
Usernames='~/CyberSec/Usernames'

Discovery='~/CyberSec/Discovery'
URLS='~/CyberSec/Discovery/URLS'
DNS='~/CyberSec/Discovery/Web-Content/DNS'
Web-Content='~/CyberSec/Discovery/Web-Content'
Burpsuit='~/CyberSec/Discovery/Web-Content/Burpsuit'
ParamList='~/CyberSec/Discovery/Web-Content/Burpsuit/Param_lists'



function Git_Installs {
    # Installs The infamous Lazy script
    cd Github && git clone https://github.com/arismelachroinos/lscript.git
    cd lscript && chmod +x install.sh && ./install.sh # If you get an error use "sudo sh install.sh"
    # Type "l" to run
    

}

function VPNS {
    # Installs Nord VPN & Potentially Other Things In Future.
    cd ~ && cd Downloads
    curl https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb --output NordVPN.deb
    sudo apt install ./NordVPN.deb
    sudo apt-get update && sudo apt-get upgrade && cd ~
}

function Download_Files {
    # Password Files
    cd ~/CyberSec/Pwlists
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt --output Top100.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-500.txt --output Top500.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000.txt --output Top1K.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt --output Top10K.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100000.txt --output Top100K.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000000.txt --output Top1M.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/NordVPN.txt --output NordVPN.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/muslimMatch.txt --output MuslimMatch.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/myspace.txt --output MySpace.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/youporn2012-raw.txt --output YouPorn2012.txt
    curl https://github.com/danielmiessler/SecLists/raw/master/Passwords/Leaked-Databases/rockyou.txt.tar.gz --output rockyou.txt.tar.gz

    #Parameter Lists
    cd ~/CyberSec/Discovery/Web-Content/Burpsuit/Param_lists
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/BurpSuite-ParamMiner/lowercase-headers --output lowercase_headers.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/BurpSuite-ParamMiner/uppercase-headers --output UPPERCASE_HEADERS.txt

    #URL Lists (Sub-directories)
    cd ~/CyberSec/Discovery/Web-Content/URLS
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-wordpress-3.3.1.txt --output WordPressURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-joomla-3.0.3.txt --output JoomlaURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-SAP.txt --output SapURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-Drupal-7.20.txt --output DrupalURLS.txt
    
    #Web-Content (General)
    cd ~/CyberSec/Discovery/Web-Content
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-all-content-types.txt --output All_Web-Content_Types.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
    curl file --output file.txt
}


function Install_log {
    clear && toilet INSTALLATION LOG.. -f smblock -w 500 | lolcat
    echo Updated System
    echo Installed cmatrix              -- Be Like Neo
    echo Installed Figlet               -- ACII Art Tool
    echo Installed Toilet               -- Alt ASCII Art Tool
    echo Installed Lolcat               -- Rainbow Text Output
    echo Installed dolphin              -- File Explorer
    echo Installed nano                 -- CLI Text Editor
    echo Installed NordVPN              -- Best VPN
    echo Installed The Tor Browser GUI  -- Darkweb Browser
    echo Installed The Lazy Script      -- Makes Life Easier.
    echo _______________________________________________________
    echo Created "~/Darknet"
    echo Created "~/Darknet/PGP_Keys"
    echo Created "~/Darknet/Bookmarks" 
    echo Created "~/Github"
    echo Created "~/Projects"
    echo Created "~/Reports"
    echo Created "~/CyberSec"
    echo Created "~/CyberSec/Pwlists"
    echo Created "~/CyberSec/Fuzzing"
    echo Created "~/CyberSec/Payloads"
    echo Created "~/CyberSec/Usernames"
    echo Created "~/CyberSec/Discovery"
    echo Created "~/CyberSec/Discovery/Web-Content"
    echo Created "~/CyberSec/Discovery/Web-Content/DNS"
    echo Created "~/CyberSec/Discovery/Web-Content/Burpsuit/Param_lists"
    echo Created "~/CyberSec/"
    echo Created "~/CyberSec/"
    echo Created "~/CyberSec/"
}

clear && echo KALI Setup Script
echo "Would You Like To Use Defaults?"
read -p "Continue (y/n)?" ASK
if [ "$ASK" = "y" ]; then
 Ease_Of_Life
 Dirs
 Git_Installs
 VPNS
 Download_Files
 Install_log
 cd ~ && ls
 exit

elif [ "$ASK" = "n" ]; then

else
 echo ${RED} Well Thats Not An Option..
 echo Exiting.. ${NC}

: '
------ THIS IS A COMMENT ------
TODO;
fill the directories full of lists
turn directories into a variable list for ease
 '