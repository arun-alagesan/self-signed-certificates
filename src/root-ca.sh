#!/usr/bin/env bash
# Remove any older files genreated by this script
rm -rv ssl

sleep 2

mkdir ssl
openssl genrsa -des3 -out ./ssl/root-CA.key 2048
openssl req -x509 -new -nodes -key ./ssl/root-CA.key -sha256 -days 1024 -out ./ssl/root-CA.pem