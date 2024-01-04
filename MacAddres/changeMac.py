import subprocess

interface = input("Interface>")
newMac = input("NewMac>")

subprocess.run("ifconfig "+interface+" down", shell=True) 
subprocess.run("ifconfig " +interface+" hw ether"+newMac ,shell=True)
subprocess.run("ifconfig "+interface+" up")
