import os,sys,utils.init,subprocess
def clear():
  os.system('cls' if os.name == 'nt' else 'clear')
import time,utils.proc,colorama,webbrowser,http.server,socketserver
from datetime import datetime
colorama.init()
clear()
def log(txt):
  print(f"({colorama.Fore.RED}λ{colorama.Style.RESET_ALL}) {txt}")
class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory="utils/Interface/", **kwargs)
with socketserver.TCPServer(("", 2077), Handler) as httpd:
    log("Lambda is now running.")
    log("go to localhost:2077 to access the interface.")
    httpd.serve_forever()
