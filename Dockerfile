FROM kalilinux/kali-rolling
LABEL version="0.1.8"

RUN echo "nameserver 1.1.1.1" >> /etc/resolv.conf

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y tor nyx metasploit-framework \
    sqlmap hydra hashcat john nmap masscan recon-ng \
    curl wget dnsutils proxychains-ng dirb nikto inetutils-ping \
    vim sherlock jq whois tmux

RUN curl -sSL https://gist.githubusercontent.com/Extr3m4R4710/491efba300cb4f64254716fc25c79062/raw/9d6a5c33a21eba7e47ab3574eed810580d70e271/gistfile1.txt -o ~/.bashrc