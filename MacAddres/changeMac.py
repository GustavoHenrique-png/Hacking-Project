import subprocess
import optparse

parser = optparse.OptionParser()

def arguments():
    #adicionando comandos por terminal
    parser.add_option("-i","--interface", dest = "interface", help = "Interface a mudar o MAC")
    parser.add_option("-m","--mac", dest = "newMac", help = "Endereço Mac a ser mudado")
    return parser.parse_args()

def changeMac(interface, newMac):
    print("[+] Mudando o endereço mac de: "+interface+"para: "+newMac)

    subprocess.run("ifconfig "+interface+" down") 
    subprocess.run("ifconfig " +interface+" hw ether"+newMac)
    subprocess.run("ifconfig "+interface+" up")


(options,arguments) = arguments()
changeMac(options.interface, options.newMac)

