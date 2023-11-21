import os
deps=[
  "apt install tsu",
  "pip install colorama",
  "pip install tqdm",
  "apt-get install lua5.4",
  "apt-get install luarocks",
  "apt install golang",
  "pip install asyncio",
  "pip install http.server",
  "pip install webbrowser",
  "pip install socketserver"
  ]
def install_deps():
  for i in range(len(deps)):
   os.system(f"{deps[i]}")