#!/usr/bin/env bash

# configure the repository file
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list

# install Tor && requirements
apt-get update && apt-get install tor lighttpd php7.0-cgi -y && apt autoremove -y
pip install -UI -r requirements.txt
chmod +x ngrok instagram.py
chmod -R 775 web
