#!/bin/bash

python3<<EOF
import socket

ART="""\n


██╗  ██╗ █████╗ ██╗  ██╗███╗   ██╗
██║  ██║██╔══██╗██║ ██╔╝████╗  ██║
███████║███████║█████╔╝ ██╔██╗ ██║
██╔══██║██╔══██║██╔═██╗ ██║╚██╗██║
██║  ██║██║  ██║██║  ██╗██║ ╚████║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝

              S C A N
        Network Reconnaissance
                 v1.0


\n"""

def _main():

    print(ART)
    
    try:
        with socket.socket(socket.AF_INET,socket.SOCK_STREAM) as sock:
            sock.settime(3)
    except:
        pass

if __name__ = '__main__':
main()

EOF
