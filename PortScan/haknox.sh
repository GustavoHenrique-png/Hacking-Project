#!/bin/bash

python3 - "$@" <<EOF
import socket
import argparse

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

def main():

    parser = argparse.ArgumentParser()

    parser.add_argument("-t" ,required=True)

    args = parser.parse_args()

    portas = [80,22]



    print(ART)
    for porta in portas:
        try:
            with socket.socket(socket.AF_INET,socket.SOCK_STREAM) as sock:
                sock.settimeout(3)
                
                result = sock.connect_ex((args.t,porta))

                if result == 0:
                    print(f"[+]{porta} aberta")

        except socket.error as erro:
            print(f"[!] Erro na porta {porta}: {erro}")

if __name__ == '__main__':
    main()

EOF
