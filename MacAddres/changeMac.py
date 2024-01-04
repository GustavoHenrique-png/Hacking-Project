import subprocess
import optparse

parser = optparse.OptionParser()
parser.add_option("-i","--interface", dest = "interface", help = "Interface a mudar o MAC")
parser.add_option("-m","--mac", dest = "newMac", help = "Endereço Mac a ser mudado")
(options,arguments) = parser.parse_args()

interface = options.interface
newMac = options.newMac

print("[+] Mudando o endereço mac de: "+interface+"para: "+newMac)

subprocess.run("ifconfig "+interface+" down") 
subprocess.run("ifconfig " +interface+" hw ether"+newMac)
subprocess.run("ifconfig "+interface+" up")
