import os
import sys
import time
import subprocess
albafet=['a','b','c','d','e','f','g','h','i','j','k','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
def linux_proc():
  procids=os.listdir("/proc/")
  for letter in albafet:
    for pid in procids:
      if pid.contains(letter):
       procids.remove(pid)
  return procids
 
