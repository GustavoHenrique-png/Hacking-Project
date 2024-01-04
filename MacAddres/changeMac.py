import subprocess

subprocess.run("ifconfig wlan0 down", "ifconfig wlan0 hw ether" ,shell=True)
subprocess.run("ifconfig wlan0 up")
