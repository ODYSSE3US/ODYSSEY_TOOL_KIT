#!/bin/bash

#Kali-Vbox_Setup.sh
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

logo () {
    clear
    :"
                                       ██████╗ ██████╗ ██╗   ██╗███████╗███████╗███████╗██╗   ██╗███████╗
                                      ██╔═══██╗██╔══██╗╚██╗ ██╔╝██╔════╝██╔════╝██╔════╝██║   ██║██╔════╝
                                      ██║   ██║██║  ██║ ╚████╔╝ ███████╗███████╗█████╗  ██║   ██║███████╗
                                      ██║   ██║██║  ██║  ╚██╔╝  ╚════██║╚════██║██╔══╝  ██║   ██║╚════██║
                                      ╚██████╔╝██████╔╝   ██║   ███████║███████║███████╗╚██████╔╝███████║
                                       ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚══════╝
                                                               29/08/2022

                            ▄█   ▄█▄    ▄████████  ▄█        ▄█        ▄█        ▄█  ███▄▄▄▄   ███    █▄  ▀████    ▐████▀                         
                           ███ ▄███▀   ███    ███ ███       ███       ███       ███  ███▀▀▀██▄ ███    ███   ███▌   ████▀                          
                           ███▐██▀     ███    ███ ███       ███▌      ███       ███▌ ███   ███ ███    ███    ███  ▐███                            
                          ▄█████▀      ███    ███ ███       ███▌      ███       ███▌ ███   ███ ███    ███    ▀███▄███▀                            
                         ▀▀█████▄    ▀███████████ ███       ███▌      ███       ███▌ ███   ███ ███    ███    ████▀██▄                             
                           ███▐██▄     ███    ███ ███       ███       ███       ███  ███   ███ ███    ███   ▐███  ▀███                            
                           ███ ▀███▄   ███    ███ ███▌    ▄ ███       ███▌    ▄ ███  ███   ███ ███    ███  ▄███     ███▄                          
                           ███   ▀█▀   ███    █▀  █████▄▄██ █▀        █████▄▄██ █▀    ▀█   █▀  ████████▀  ████       ███▄                         
                            ▀                      ▀                   ▀                                                                           

             ▀█████████▄     ▄████████    ▄████████    ▄█    █▄            ▄████████  ▄████████    ▄████████  ▄█     ▄███████▄     ███     
              ███    ███   ███    ███   ███    ███   ███    ███          ███    ███ ███    ███   ███    ███ ███    ███    ███ ▀█████████▄ 
              ███    ███   ███    ███   ███    █▀    ███    ███          ███    █▀  ███    █▀    ███    ███ ███▌   ███    ███    ▀███▀▀██ 
             ▄███▄▄▄██▀    ███    ███   ███         ▄███▄▄▄▄███▄▄        ███        ███         ▄███▄▄▄▄██▀ ███▌   ███    ███     ███   ▀ 
             ▀▀███▀▀▀██▄  ▀███████████ ▀███████████ ▀▀███▀▀▀▀███▀       ▀███████████ ███        ▀▀███▀▀▀▀▀   ███▌ ▀█████████▀      ███     
               ███    ██▄   ███    ███          ███   ███    ███                 ███ ███    █▄  ▀███████████ ███    ███            ███     
               ███    ███   ███    ███    ▄█    ███   ███    ███           ▄█    ███ ███    ███   ███    ███ ███    ███            ███     
             ▄█████████▀    ███    █▀   ▄████████▀    ███    █▀          ▄████████▀  ████████▀    ███    ███ █▀    ▄████▀         ▄████▀   
                                                                                                  ███    ███                               
"
}



Ease_Of_Life () {
    echo kali | sudo -S apt-get update && sudo apt-get -y upgrade
    sudo apt-get install -y toilet
    sudo apt-get install -y lolcat
    sudo apt-get install -y neofetch
    sudo apt-get install -y figlet
    sudo apt-get install -y nano
    sudo apt-get install -y cmatrix
    sudo apt-get install -y wine
    sudo apt-get install -y golang
    sudo apt-get install -y dolphin
    sudo apt-get install -y torbrowser-launcher
    sudo apt-get install -y snapd

    #Music, Photo & Productivity
    sudo snap install spotify
    sudo snap install orange-app #Soundcloud client
    sudo snap install ultimate-media-downloader
    sudo snap install libreoffice
    sudo snap install wonderwall #Wallpaper
    sudo snap install snap-store
    sudo snap install photoscape #Photo editor

    #Social
    sudo snap install discord
    snap connect discord:system-observe
    sudo snap install bluemail #Email client
    sudo snap install irccloud #IRC chat client
    sudo snap install signal-desktop
    sudo snap install telegram-desktop
    #Security
    sudo snap install keepassxc #Cross-Platform Secure Password Manager
    sudo snap install bitwarden #Another crossplatform password manager
    sudo snap install newpass #password gen
    #Cybersecurity
    sudo snap install postman
    sudo snap install code #VScode
    sudo snap install certbot

    torbrowser-launcher


    #GUI Package Manager
    sudo echo kali | sudo -S apt-get -y install gnome-software
    sleep 5
    
    cd /etc/apt
    sudo cp sources.list sources.list.backup

    echo "\n\n##FULL KALI REPO LIST##" | sudo tee -a sources.list
    sleep 0.5
    echo "deb http://kali.download/kali/ kali-rolling main non-free contrib" | sudo tee -a sources.list
    sleep 0.5
    echo "deb http://ftp.debian.org/debian stable main contrib non-free" | sudo tee -a sources.list
    sleep 0.5
    echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib" | sudo tee -a sources.list
    sleep 0.5k
    echo "deb http://http.kali.org/kali kali-experimental main non-free contrib" | sudo tee -a sources.list
    sleep 0.5
    echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a sources.list
    echo "\n" | sudo tee -a sources.list
}

G0D_M0D3 () {
    echo "Would You Like To Download Extra ISO Features?"
    echo "(This May Take a While..)"

    read -p "Y/N" ASK
    if [ "$ASK" = "y" ]; then

     echo kali | sudo -S apt-get update
     echo kali | sudo -S apt-get install kali-linux-everything
    else
     clear && exit
    fi
}

Dirs () {
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
    cd ~/CyberSec/Fuzzing && mkdir -p XSS/Polyglots && mkdir User-Agents && mkdir SQLi
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



Git_Installs () {
    # Installs The infamous Lazy script
    cd Github && git clone https://github.com/arismelachroinos/lscript.git
    cd lscript && chmod +x install.sh && ./install.sh # If you get an error use "sudo sh install.sh"
    # Type "l" to run
    cd ~/Github && git clone https://github.com/rajkumardusad/IP-Tracer.git
    cd IP-Tracer
    chmod +x install && ./install

    cd ~/Github
    git clone https://github.com/certbot/certbot.git
    git clone https://github.com/s0md3v/XSStrike.git
    git clone https://github.com/devanshbatham/ParamSpider.git
    cd ParamSpider
    python3 -m pip install -r requirements.txt
    cd ~/Github
    git clone https://github.com/Datalux/Osintgram.git
    cd Osintgram
    python3 -m pip install -r requirements.txt
    cd ~/Github
    
    
    
    #cd ~/Github
}

VPNS () {
    # Installs Nord VPN & Potentially Other Things In Future.
    cd ~ && cd Downloads
    curl https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb --output NordVPN.deb
    echo kali | sudo -S apt install ./NordVPN.deb
    echo kali | sudo -S apt-get update && sudo apt-get upgrade upgrade && cd ~

}

Download_Files () {
    ############################################################# WORD LISTS #############################################################

    # Password Files
    echo "\n"
    toilet DOWNLOADING PASSWORD LISTS.. -f smblock -w 500
    echo "____________________________________________________"
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
    echo "\n"
    toilet DOWNLOADING PARAMETER LISTS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Discovery/Web-Content/Burpsuit/Param_lists
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/BurpSuite-ParamMiner/lowercase-headers --output lowercase_headers.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/BurpSuite-ParamMiner/uppercase-headers --output UPPERCASE_HEADERS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/burp-parameter-names.txt --output BurpParam-Names.txt

    #URL Lists (Sub-directories)
    echo "\n"
    toilet DOWNLOADING URL LISTS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Discovery/Web-Content/URLS
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-wordpress-3.3.1.txt --output WordPressURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-joomla-3.0.3.txt --output JoomlaURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-SAP.txt --output SapURLS.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/URLs/urls-Drupal-7.20.txt --output DrupalURLS.txt
    
    #Web-Content (General)
    echo "\n"
    toilet DOWNLOADING WEB-CONTENT LISTS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Discovery/Web-Content
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-all-content-types.txt --output All_Web-Content_Types.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-extensions.txt --output Web-Extentions.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/web-mutations.txt --output Web-Mutations.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/weblogic.txt --output WebLogic.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/nginx.txt --output Nginx.txt
    
    # Bug Bounty Templates
    echo "\n"
    toilet DOWNLOADING BUG-BOUNTY REPORT TEMPLATES.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/Reports/Templates
    curl https://raw.githubusercontent.com/ZephrFish/BugBountyTemplates/master/Blank.md --output All_Purpose.md
    curl https://raw.githubusercontent.com/ZephrFish/BugBountyTemplates/master/Example.md --output All_Purpose-EXAMPLE.md
    curl https://raw.githubusercontent.com/ZephrFish/BugBountyTemplates/master/short.md --output All_Purpose-short.md
    echo https://buer.haus/breport/ >> Reportgen.txt
    
    #FUZZING
    echo "\n"
    toilet DOWNLOADING FUZZING LISTS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Fuzzing
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing --output XSS-Fuzz.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XXE-Fuzzing.txt --output XXE-Fuzz.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XML-FUZZ.txt --output XML-Fuzz.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/command-injection-commix.txt --output command-injection.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/country-codes.txt --output country-codes.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/http-request-methods.txt --output http-request-methods.txt
    
    #XSS
    echo "\n"
    toilet DOWNLOADING XSS PAYLOADS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Fuzzing/XSS
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-BruteLogic.txt --output XSS-BruteLogic.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-Bypass-Strings-BruteLogic.txt --output XSS-Bypass-Strings.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-With-Context-Jhaddix.txt --output XSS-With-Context-Jhaddix.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-Jhaddix.txt --output XSS-Jhaddix.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-Cheat-Sheet-PortSwigger.txt --output XSS-Cheat-Sheet-PortSwigger.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-OFJAAAH.txt --output XSS-OFJAAAH.txt
    
    #XSS Polyglots
    echo "\n"
    toilet DOWNLOADING XSS POLYGLOTS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Fuzzing/XSS/Polyglots
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/XSS-Polyglots.txt --output XSS-Polyglots.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/XSS-innerht-ml.txt --output XSS-innerht-ml.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/XSS-Polyglot-Ultimate-0xsobky.txt --output Ultimate-XSS-Polyglot.txt
    
    #SQLi
    echo "\n"
    toilet DOWNLOADING SQLI PAYLOADS.. -f smblock -w 500
    echo "____________________________________________________"
    cd ~/CyberSec/Fuzzing/SQLi
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/Polyglots/SQLi-Polyglots.txt --output SQLi-Polyglots.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/SQLi/quick-SQLi.txt --output quick-SQLi.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/SQLi/Generic-SQLi.txt --output Generic-SQLi.txt
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/SQLi/Generic-BlindSQLi.fuzzdb.txt --output Generic-BlindSQLi.fuzzdb.txt
    
    # User-Agents
    echo "\n"
    toilet DOWNLOADING USER-AGENT LISTS.. -f smblock -w 500
    echo "____________________________________________________"
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
    echo "\n"
    toilet DOWNLOADING PAYLOADS.. -f smblock -w 500
    echo "____________________________________________________"

    #Usernames
    echo "\n"
    toilet DOWNLOADING USERNAME LISTS.. -f smblock -w 500
    echo "____________________________________________________"

    cd ~/CyberSec/Usernames
    curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Usernames/xato-net-10-million-usernames.txt --output 10Mil-Usernames.txt
    ##curl file --output file.txt
    #curl file --output file.txt

    ############################################################# PROGRAMMING SUPPORT #############################################################
    # N/A

}

Aliases () {
    cd ~
    sudo cp .bashrc .bashrc.backup
    sudo cp .zshrc .zshrc.backup

    echo "\n\n#ODYSSEUS'S CUSTOM COMMANDS LIST\n" >> .zshrc >> .bashrc
    echo "#Improved Ease Of Use\n" >> .zshrc >> .bashrc

    #SYSTEM
    echo "alias lt='ls --human-readable --size -1 -S --classify' #Improved File Visability & Layout" >> .zshrc >> .bashrc
    echo "alias upgrade='sudo apt-get update && sudo apt-get upgrade' #Update And Upgrade In One Command" >> .zshrc >> .bashrc
    echo "alias full-upgrade='sudo apt full-upgrade' #Full System Upgrade" >> .zshrc >> .bashrc
    echo "alias ports='netstat -tulanp' #Lists all open ports" >> .zshrc >> .bashrc
    echo "alias c='clear' #Shorterns The Clear Command" >> .zshrc >> .bashrc
    echo "alias cleardown='cd ~/Downloads && rm -r *' #Clears downloads folder" >> .zshrc >> .bashrc
    #echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc

    #PYTHON
    echo "alias ve='python3 -m venv ./venv' #Creates A Python Virtual Environment In Current Dir" >> .zshrc >> .bashrc
    echo "alias va='source ./venv/bin/activate' #Activates The Python venv" >> .zshrc >> .bashrc
    echo "alias reqs='python3 -m pip install requirements.txt' #Installs Requirements.txt From Current Dir" >> .zshrc >> .bashrc
    #echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc

    #OTHER (UNFINISHED)
    echo "alias csec='cd ~/CyberSec'" >> .zshrc >> .bashrc
    echo "alias reps='cd ~/Reports'" >> .zshrc >> .bashrc
    echo "alias ghub='cd ~/Github'" >> .zshrc >> .bashrc
    echo "alias projects='cd ~/Projects'" >> .zshrc >> .bashrc
    echo "alias ody='toilet ODYSSEUS.. -f smblock -w 500 | lolcat'" >> .zshrc >> .bashrc
    echo "alias legend='toilet LIVING LEGEND.. -f smblock -w 500 | lolcat'" >> .zshrc >> .bashrc
    #echo "alias shortName='Command_Here'" >> .zshrc >> .bashrc

    #ADVANCED ALIASES (FUNCTIONS)
    echo "\n\n #ADVANCED ALIASES (FUNCTIONS)\n" >> .zshrc >> .bashrc
    echo "#SHOWS PUBLIC IP WHICH ISNT SUPPORTED BY IPCONFIG" >> .zshrc >> .bashrc
    echo "pubip(){" >> .zshrc >> .bashrc
    echo "   pubip='$(dig +short myip.opendns.com @resolver1.opendns.com)'" >> .zshrc >> .bashrc
    echo "   echo 'My WAN/Public IP address: \${pubip}'\n}" >> .zshrc >> .bashrc
    echo "\n\n" >> .zshrc >> .bashrc
    echo "" >> .zshrc >> .bashrc


    echo "\n###### END OF ODY'S CUSTOM COMMANDS #####\n\n" >> .zshrc >> .bashrc
    
    cd ~
    #Updates The Local Profile Alias's
    # And for the love of god don't delete the first "." thinking its a typo, its a shortcut for the source function.
    exec zsh
    source ~/.zshrc
    
    #Updates The Systems Profile Alias's
    exec bash
    source ~/.bashrc
    exec zsh
}



Install_log () {
    clear && toilet INSTALLATION LOG.. -f smblock -w 500 | lolcat
    echo "\n                   #UPDATED SYSTEM#"
    echo "\n                 ##APT INSTALLATIONS##"
    echo "Installed cmatrix              -- Be Like Neo"
    echo "Installed Figlet               -- ACII Art Tool"
    echo "Installed Toilet               -- Alt ASCII Art Tool"
    echo "Installed Lolcat               -- Rainbow Text Output"
    echo "Installed dolphin              -- File Explorer"
    echo "Installed nano                 -- CLI Text Editor"
    echo "Installed wine                 -- Adds Windows Compatibility"
    echo "Installed golang               -- GO language"
    echo "Installed snapd                -- The Snapd Store CLI"
    echo "Installed snapd-store          -- The Snapd Store GUI"
    
    echo "\n                 ##SNAP INSTALLATIONS##"
    echo "Installed spotify              -- Music Streaming Service"
    echo "Installed orange-app           -- Soundcloud Client"
    echo "Installed libreoffice          -- MS Office alt"
    echo "Installed wonderwall           -- UHD Wallpaper App"
    echo "Installed photoscape           -- Photo Editor"
    echo "Installed discord              -- Unoffical Discord Client"
    echo "Installed irccloud             -- IRC Chat Client"
    echo "Installed signal-desktop       -- Secure Messenging Client"
    echo "Installed telegram-desktop     -- Telegram Client"
    echo "Installed bluemail             -- Email Client"
    echo "Installed keepassxc            -- Cross-Platform Password Manager"
    echo "Installed bitwarden            -- Cross-Platform Password Manager"
    echo "Installed postman              -- API Reverse Engeneering Tool"
    echo "Installed code                 -- VS Code Text Editor"
    echo "Installed certbot              -- HTTPS Cert Generator"
#    echo "Installed Package              -- Details"

    echo "\n                 ##OTHER INSTALLATIONS##"
    echo "Installed The Tor Browser GUI  -- Darkweb Browser"
    echo "Installed The Lazy Script      -- Makes Life Easier."
    echo "Installed ultimate-media-downloader -- Media Downloader"
    echo "_______________________________________________________"
    echo "                   ##Directories##"
    echo "Created                   ~/Darknet"
    echo "Created                   ~/Darknet/PGP_Keys"
    echo "Created                   ~/Darknet/Bookmarks"
    echo "Created                   ~/Github"
    echo "Created                   ~/Projects"
    echo "Created                   ~/Reports"
    echo "Created                   ~/Reports/Templates"
    echo "Created                   ~/CyberSec"
    echo "Created                   ~/CyberSec/Pwlists"
    echo "Created                   ~/CyberSec/Fuzzing"
    echo "Created                   ~/CyberSec/Payloads"
    echo "Created                   ~/CyberSec/Usernames"
    echo "Created                   ~/CyberSec/Discovery"
    echo "Created                   ~/CyberSec/Discovery/Web-Content"
    echo "Created                   ~/CyberSec/Discovery/Web-Content/DNS"
    echo "Created                   ~/CyberSec/Discovery/./Burpsuit/Param_lists"
    echo "_______________________________________________________"
    echo "                     NEW Bash Alias's"
    echo "\n                 ####SHORTCUTS####"
    echo "'l'                       ---- The Lazy Script Shortcut"
    echo "'csec'                    ---- Opens Cybersec Dir"
    echo "'reps'                    ---- Opens Reports Dir"
    echo "'ghub'                    ---- Opens Github Dir"
    echo "'projects'                ---- Opens Project Dir"

    echo "\n                 ##SYSTEM ALIASES##"
    echo "'c'                       ---- Shorterns The Clear Command"
    echo "'lt'                      ---- Improved File Visability & Layout"
    echo "'ports'                   ---- Lists All Open Ports"
    echo "'upgrade'                 ---- Update And Upgrade In One Command"
    echo "'full-upgrade'            ---- Full System Upgrade"
    echo "'clear down'              ---- Cear The Downloads Folder"
#    echo "'Command'                 ---- TXT_Here"
#    echo "'Command'                 ---- TXT_Here"

    echo "\n                 ##PYTHON ALIASES##"
    echo "'ve'                      ---- Creates A Python Virtual Environment In Current Dir"
    echo "'va'                      ---- Activates The Python venv"
    echo "'reqs'                    ---- Installs Requirements.txt From Current Dir"
#    echo "'Command'                 ---- TXT_Here"

}

clear && echo KALI Setup Script
echo "\n"
echo "Would You Like To Install?"
echo "To Uninstall Type Out 'uninstall'."
read -p "Continue (y/n)? " ASK
if [ "$ASK" = "y" ]; then
 #Ease_Of_Life
 #Dirs
 #Git_Installs
 #VPNS
 #Download_Files
 Aliases
 Install_log
 cd ~ && ls
 exit 0

elif [ "$ASK" = "n" ]; then
echo "Exting.."
sleep 1
clear
exit 0

elif [ "$ASK" = "uninstall"]; then
 Uninstall
 exit 0

else
 echo ${RED} Well Thats Not An Option..
 echo Exiting.. ${NC}
 exit 1
fi


Uninstall () {
    cd ~
    #Restoring Bashrc & zshrc
    echo "Restoring RC Backups"
    sudo rm .bashrc
    sudo mv .bashrc.backup .bashrc
    sudo rm .zshrc
    sudo mv .zshrc.backup .zshrc

    #Removing Directories and contents
    echo "Removing Directories & Contents"
    rm -d CyberSec
    rm -d Reports
    rm -d Projects
    rm -d Github
    rm -d Darknet

    #Restoring sources.lists
    echo "Restoring sources.lists"
    cd /etc/apt
    sudo rm .sources.lists
    sudo mv sources.lists.backup sources.lists

    #Uninstall Packages
    echo "Uninstalling Packages"
    sleep 2

    #Music, Photo & Productivity
    sudo snap uninstall spotify
    sudo snap uninstall orange-app #Soundcloud client
    sudo snap uninstall ultimate-media-downloader
    sudo snap uninstall libreoffice
    sudo snap uninstall wonderwall #Wallpaper
    sudo snap uninstall snap-store
    sudo snap uninstall photoscape #Photo editor

    #Social
    sudo snap uninstall discord
    snap connect discord:system-observe
    sudo snap uninstall bluemail #Email client
    sudo snap uninstall irccloud #IRC chat client
    sudo snap uninstall signal-desktop
    sudo snap uninstall telegram-desktop
    #Security
    sudo snap uninstall keepassxc #Cross-Platform Secure Password Manager
    sudo snap uninstall bitwarden #Another crossplatform password manager
    sudo snap uninstall newpass #password gen
    #Cybersecurity
    sudo snap uninstall postman
    sudo snap uninstall code #VScode
    sudo snap uninstall certbot
    sudo apt-get uninstall -y snapd
    
    #APT Uninstalls
    sudo apt-get uninstall -y toilet
    sudo apt-get uninstall -y lolcat
    sudo apt-get uninstall -y neofetch
    sudo apt-get uninstall -y figlet
    sudo apt-get uninstall -y nano
    sudo apt-get uninstall -y cmatrix
    sudo apt-get uninstall -y wine
    sudo apt-get uninstall -y golang
    sudo apt-get uninstall -y dolphin
    sudo apt-get uninstall -y torbrowser-launcher
    sudo apt-get uninstall -y nordvpn


    echo "Uninstalled Everything & Files Have Been Reverted."
}



: "
------ THIS IS A COMMENT ------
TODO;
fill the directories full of lists
make bash alias's
make all file names lower case
 "

# Refrences
# https://newbedev.com/shopt-command-not-found-in-bashrc-after-shell-updation