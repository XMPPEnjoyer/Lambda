import os,sys,utils.init,atexit
def clear():
  os.system('cls' if os.name == 'nt' else 'clear')
import time,subprocess,utils.proc,colorama,utils.server,asyncio,webbrowser,subprocess
from datetime import datetime
colorama.init()
clear()
def log(txt):
  print(f"({colorama.Fore.RED}λ{colorama.Style .RESET_ALL}) {txt}")
log("init proc")
time.sleep(1)
proc = utils.proc.linux_proc()
log(proc)
time.sleep(1)
log("init server")
time.sleep(1)

webui = subprocess.Popen(["python","-m","http.server","-d","$(pwd)/utils/interface","2077"])


while True:
  webui()


