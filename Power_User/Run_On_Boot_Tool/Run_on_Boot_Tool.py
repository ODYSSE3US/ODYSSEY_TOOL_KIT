import os
import os.path

Startup_Dir = r"%APPDATA%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
Current_Dir = os.getcwd()
Current_File_Dir = os.path.dirname(os.path.realpath(__file__))

print("Current Dir: ", Current_Dir, "\n")
print("Current File Dir: ", Current_File_Dir + ".py")

print("\n StartUp Dir: ", Startup_Dir)