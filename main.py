import colorama
import sys
import platform
import subprocess
import os
import webbrowser
import threading

dependencies = ["colorama"]

# Logging function
def log(txt):
  print(f"({colorama.Fore.RED}λ{colorama.Style.RESET_ALL}) {txt}")

def startServer():
  os.system("python -m http.server -d %cd%/utils/interface/ 2077")

if __name__ == "__main__":
  # Check if python version is not greator or equal to 3.10 
  if not sys.version_info >= (3, 10):
    print("You are running an older version of Python. Only 3.10 and above are allowed")

  # Only Supported OS's are Windows and Linux atm
  if not platform.system() == "Windows":
    print("This version of lambda is only to be run on Windows. Check the githubrepo for your verison")
    exit()

  # Checking if python modules are installed
  for dependency in dependencies:
    try:
      subprocess.check_output([sys.executable, "-m", "pip", "show", dependency])
    except subprocess.CalledProcessError:
      print(f"Installing {dependency}...")
      subprocess.check_call([sys.executable, "-m", "pip", "install", dependency])
      print(f"{dependency} installed successfully.")

  if os == "WINDOWS":
    try:
        subprocess.check_call(["lua", "-v"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except (subprocess.CalledProcessError, FileNotFoundError):
        print("Lua is not found on host machine. Please install Lua")
        exit()
    try:
      subprocess.check_call(["luarocks", "--version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except (subprocess.CalledProcessError, FileNotFoundError):
      print("Lua is not found on host machine. Please install LuaRocks")
      exit()

  colorama.init()

  os.system('cls' if os.name == 'nt' else 'clear')

  log("Webserver started at http://localhost:2077")

  server_thread = threading.Thread(target=startServer)
  server_thread.daemon = True
  server_thread.start()

  log("Opening browser to url http://localhost:2077")

  webbrowser.open_new("http://localhost:2077")

  server_thread.join()