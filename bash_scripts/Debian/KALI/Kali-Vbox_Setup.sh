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
    echo kali | sudo -S apt-get update && sudo apt-get upgrade -y upgrade
    sudo apt-get install toilet -y
    sudo apt-get install lolcat -y
    sudo apt-get install neofetch -y
    sudo apt-get install figlet -y
    sudo apt-get install nano -y
    sudo apt-get install cmatrix -y
    clear && toilet LOLCAT TOILET FLUSH -f smblock -w 500 | lolcat
    sudo apt-get install dolphin -y
    sudo apt-get install torbrowser-launcher
    torbrowser-launcher
}

function G0D_M0D3 {
    echo "Would You Like To Download Extra ISO Features?"
    echo "(This May Take a While..)"

    read -p "Y/N" ASK
    if [ "$ASK" = "y" ]; then

     echo kali | sudo -S apt-get update
     echo kali | sudo -S apt-get install kali-linux-everything
    else;
     clear && exit
}

function Dirs {
    cd ~
    mkdir Darknet
    mkdir Github
    mkdir Projects
    mkdir Reports # Make sub Dir for templates
    mkdir CyberSec
    #Darknet SubDirs
    cd Darknet && mkdir PGP_Keys && mkdir Bookmarks && cd ~
    #CyberSec SubDirs
    cd CyberSec && mkdir Pwlists && mkdir Fuzzing && mkdir Payloads && mkdir Usernames && mkdir Discovery
    #CyberSec/Descovery/SubDirs
    cd Discovery && mkdir Web-Content && mkdir DNS
    #CyberSec/Web-Content/SubDirs
    cd Web-Content && mkdir -p Burpsuit/Param_lists && mkdir URLS
    # Report SubDirs
    cd ~/Reports && mkdir Templates && mkdir Finished && In_Progress
    ##CyberSec/Fuzzing/SubDirs
    cd ~/CyberSec/Fuzzing && mkdir -p XSS/Polyglots && mkdir User-Agents && mkdir SQLi && mkdir
}

Darknet='~/Darknet'
PGP_Keys='~/Darknet/PGP_Keys'
Bookmarks='~/Darknet/Bookmarks'

Github='~/Github'
Projects='~/Projects'
Reports='~/Reports'
#Templates='~/Reports/Templates'

CyberSec='~/CyberSec'
#Pwlists='~/CyberSec/Pwlists'
#Fuzzing='~/CyberSec/Fuzzing'
#XSS='~/CyberSec/Fuzzing/XSS'
#Polyglots='~/CyberSec/Fuzzing/XSS/Polyglots'
#SQLi='~/CyberSec/Fuzzing/XSS/SQLi'
#User-Agents='~/CyberSec/Fuzzing/User-Agents'

#Payloads='~/CyberSec/Payloads'
Usernames='~/CyberSec/Usernames'

#Discovery='~/CyberSec/Discovery'
#URLS='~/CyberSec/Discovery/URLS'
#DNS='~/CyberSec/Discovery/Web-Content/DNS'
#Web-Content='~/CyberSec/Discovery/Web-Content'
#Burpsuit='~/CyberSec/Discovery/Web-Content/Burpsuit'
#ParamList='~/CyberSec/Discovery/Web-Content/Burpsuit/Param_lists'



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
    echo kali | sudo -S apt install ./NordVPN.deb
    echo kali | sudo -S apt-get update && sudo apt-get upgrade -y upgrade && cd ~

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
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/burp-parameter-names.txt --output BurpParam-Names.txt

    #URL Lists (Sub-directories)
    cd ~/CyberSec/Discovery/Web-Content/URLS
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-wordpress-3.3.1.txt --output WordPressURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-joomla-3.0.3.txt --output JoomlaURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-SAP.txt --output SapURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-Drupal-7.20.txt --output DrupalURLS.txt
    
    #Web-Content (General)
    cd ~/CyberSec/Discovery/Web-Content
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-all-content-types.txt --output All_Web-Content_Types.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-extensions.txt --output Web-Extentions.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-mutations.txt --output Web-Mutations.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/weblogic.txt --output WebLogic.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/nginx.txt --output Nginx.txt
    
    # Bug Bounty Templates
    cd ~/Reports/Templates
    curl https://raw.githubusercontent.com/ZephrFish/BugBountyTemplates/master/Blank.md --output All_Purpose.md
    curl https://raw.githubusercontent.com/ZephrFish/BugBountyTemplates/master/Example.md --output All_Purpose-EXAMPLE.md
    curl https://raw.githubusercontent.com/ZephrFish/BugBountyTemplates/master/short.md --output All_Purpose-short.md
    echo https://buer.haus/breport/ >> Reportgen.txt
    
    #FUZZING
    cd ~/CyberSec/Fuzzing
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing --output XSS-Fuzz.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XXE-Fuzzing.txt --output XXE-Fuzz.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XML-FUZZ.txt --output XML-Fuzz.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/command-injection-commix.txt --output command-injection.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/country-codes.txt --output country-codes.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/http-request-methods.txt --output http-request-methods.txt
    
    #XSS
    cd ~/CyberSec/Fuzzing/XSS
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-BruteLogic.txt --output XSS-BruteLogic.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-Bypass-Strings-BruteLogic.txt --output XSS-Bypass-Strings.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-With-Context-Jhaddix.txt --output XSS-With-Context-Jhaddix.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-Jhaddix.txt --output XSS-Jhaddix.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-Cheat-Sheet-PortSwigger.txt --output XSS-Cheat-Sheet-PortSwigger.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-OFJAAAH.txt --output XSS-OFJAAAH.txt
    
    #XSS Polyglots
    cd ~/CyberSec/Fuzzing/XSS/Polyglots
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/XSS-Polyglots.txt --output XSS-Polyglots.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/XSS-innerht-ml.txt --output XSS-innerht-ml.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/XSS-Polyglot-Ultimate-0xsobky.txt --output Ultimate-XSS-Polyglot.txt
    
    #SQLi
    cd ~/CyberSec/Fuzzing/XSS/SQLi
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/SQLi-Polyglots.txt --output SQLi-Polyglots.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/SQLi/quick-SQLi.txt --output quick-SQLi.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/SQLi/Generic-SQLi.txt --output Generic-SQLi.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/SQLi/Generic-BlindSQLi.fuzzdb.txt --output Generic-BlindSQLi.fuzzdb.txt
    
    # User-Agents
    cd ~/CyberSec/Fuzzing/User-Agents
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/user-agents-whatismybrowserdotcom-large.txt --output User-Agents-Large.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/UserAgents-IE.txt --output Internet-Explorer.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/android.txt --output Android.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/blackberry-os.txt --output Blackberry.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/darwin.txt --output Darwin.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/freebsd.txt --output FreeBSD.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/ios.txt --output IOS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/linux.txt --output Linux.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/mac-os-x.txt --output MacOS-X.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/mac.txt --output Macintosh.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/macos.txt --output MacOS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/windows-phone.txt --output windows-phone.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/windows-mobile.txt --output windows-mobile.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/User-Agents/operating-system-name/windows.txt --output Windows.txt
    
    #Payloads
    cd ~/CyberSec/Usernames
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/xato-net-10-million-usernames.txt --output 10Mil-Usernames.txt
    curl file --output file.txt
    curl file --output file.txt
}

function Aliases () {
    cd ~
    echo -e "\n\n#ODYSSEUS'S CUSTOM COMMANDS LIST\n" >> .zshrc >> .bashrc
    echo -e "#Improved Ease Of Use\n" >> .zshrc >> .bashrc

    #SYSTEM
    echo "alias lt='ls --human-readable --size -1 -S --classify' #Improved File Visability & Layout" >> .zshrc >> .bashrc
    echo "alias drives='mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort' #More Comprehensive View Of Mounted Drives." >> .zshrc >> .bashrc
    echo "alias upgrade='sudo apt-get update && sudo apt-get upgrade' #Update And Upgrade In One Command" >> .zshrc >> .bashrc
    echo "alias full-upgrade='sudo apt full-upgrade' #Full System Upgrade" >> .zshrc >> .bashrc
    echo "alias ports='netstat -tulanp' #Lists all open ports" >> .zshrc >> .bashrc
    echo "alias c='clear' #Shorterns The Clear Command" >> .zshrc >> .bashrc
    echo "alias cleardown='cd ~/Downloads && rm -r *' #Clears downloads folder" >> .zshrc >> .bashrc
    echo "alias restart='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    #PYTHON
    echo "alias ve='python3 -m venv ./venv' #Creates A Python Virtual Environment In Current Dir" >> .zshrc >> .bashrc
    echo "alias va='source ./venv/bin/activate' #Activates The Python venv" >> .zshrc >> .bashrc
    echo "alias reqs='python3 -m pip install requirements.txt' #Installs Requirements.txt From Current Dir" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc
    echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc

    #ADVANCED ALIASES (FUNCTIONS)
    echo "function pubip(){" >> .zshrc >> .bashrc
    echo "   pubip='$(dig +short myip.opendns.com @resolver1.opendns.com)'" >> .zshrc >> .bashrc
    echo "   echo 'My WAN/Public IP address: ${pubip}'" >> .zshrc >> .bashrc
    echo "" >> .zshrc >> .bashrc
    echo "" >> .zshrc >> .bashrc


    echo -e "\n###### END OF ODY'S CUSTOM COMMANDS #####\n\n" >> .zshrc >> .bashrc
    
    #Updates The Local Profile Alias's
    source ~/.zshrc
    
    #Updates The Systems Profile Alias's
    exec bash
    source ~/.bashrc
    exec zshrc
}



function Install_log {
    clear && toilet INSTALLATION LOG.. -f smblock -w 500 | lolcat
    echo "Updated System"
    echo "Installed cmatrix              -- Be Like Neo"
    echo "Installed Figlet               -- ACII Art Tool"
    echo "Installed Toilet               -- Alt ASCII Art Tool"
    echo "Installed Lolcat               -- Rainbow Text Output"
    echo "Installed dolphin              -- File Explorer"
    echo "Installed nano                 -- CLI Text Editor"
    echo "Installed NordVPN              -- Best VPN"
    echo "Installed The Tor Browser GUI  -- Darkweb Browser"
    echo "Installed The Lazy Script      -- Makes Life Easier."
    echo "_______________________________________________________"
    echo "                 ##Directories##"
    echo "Created ~/Darknet"
    echo "Created ~/Darknet/PGP_Keys"
    echo "Created ~/Darknet/Bookmarks"
    echo "Created ~/Github"
    echo "Created ~/Projects"
    echo "Created ~/Reports"
    echo "Created ~/CyberSec"
    echo "Created ~/CyberSec/Pwlists"
    echo "Created ~/CyberSec/Fuzzing"
    echo "Created ~/CyberSec/Payloads"
    echo "Created ~/CyberSec/Usernames"
    echo "Created ~/CyberSec/Discovery"
    echo "Created ~/CyberSec/Discovery/Web-Content"
    echo "Created ~/CyberSec/Discovery/Web-Content/DNS"
    echo "Created ~/CyberSec/Discovery/Web-Content/Burpsuit/Param_lists"
    echo "Created ~/CyberSec/"
    echo "Created ~/CyberSec/"
    echo "Created ~/CyberSec/"
    echo "_______________________________________________________"
    echo -e "              NEW Bash Alias's\n"
    echo "  'l'       -- The Lazy Script Shortcut"
    echo "'Command'  -- TXT_Here"
    echo "'Command'  -- TXT_Here"
    echo "'Command'  -- TXT_Here"

    echo "\n                 ##SYSTEM ALIASES##"

    echo "'c'  -- Shorterns The Clear Command"
    echo "'lt' -- Improved File Visability & Layout"
    echo "'ports'  -- Lists All Open Ports"
    echo "'drives'  -- More Comprehensive View Of Mounted Drives"
    echo "'upgrade'  -- Update And Upgrade In One Command"
    echo "'full-upgrade'  -- Full System Upgrade"
    echo "'Command'  -- TXT_Here"
    echo "'Command'  -- TXT_Here"
    echo "'Command'  -- TXT_Here"

    echo "\n                 ##PYTHON ALIASES##"
    #PYTHON
    echo "'ve'  -- Creates A Python Virtual Environment In Current Dir"
    echo "'va'  -- Activates The Python venv"
    echo "'reqs'  -- Installs Requirements.txt From Current Dir"
    echo "'Command'  -- TXT_Here"
}

clear && echo KALI Setup Script
echo   
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

else;
 echo ${RED} Well Thats Not An Option..
 echo Exiting.. ${NC}
fi
: "
------ THIS IS A COMMENT ------
TODO;
fill the directories full of lists
make bash alias's
make all file names lower case
 "