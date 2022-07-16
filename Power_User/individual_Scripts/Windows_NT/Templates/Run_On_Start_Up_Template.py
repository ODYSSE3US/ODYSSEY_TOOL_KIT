import getpass
USER_NAME = getpass.getuser()


def add_to_startup(file_path=""):
    if file_path == "":
        file_path = os.path.dirname(os.path.realpath(__file__))
    bat_path = r'C:\Users\%s\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup' % USER_NAME
    with open(bat_path + '\\' + "open.bat", "w+") as bat_file:
        bat_file.write(r'start "" "%s"' % file_path)

    #function will create a bat file in the WinNT startup folder that will run the script.
    #the "file_path" is the path to the file that you would like to run when your computer opens.
    #you can leave it blank in order to add the running script to startup.