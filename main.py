import os
def clear():
  os.system('cls' if os.name == 'nt' else 'clear')
os.system("pip install tqdm")

import sys
from tqdm import tqdm
dependants=[
  "apt install tsu",
  "pip install colorama",
  "pip install tqdm",
  "apt-get install lua5.4",
  "apt-get install luarocks",
  "",
  ]
for i in tqdm(range(len(dependants))):
  os.system(f"{dependants[i]} && clear")
import time
import subprocess
from datetime import datetime
import utils.proc
import colorama
colorama.init()
clear()
def log(txt):
  print(f"({colorama.Fore.RED}λ{colorama.Style.RESET_ALL}) {txt}")
log("webserver started at https://localhost:2077")
os.system("python3 -m http.server -d $(pwd)/utils/interface/ 2077")