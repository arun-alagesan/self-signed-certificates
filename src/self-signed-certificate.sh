#!/usr/bin/env bash
rm -rvf certs
sleep 2
mkdir certs

cd certs

openssl req -new -sha256 -nodes -out server.csr -newkey rsa:2048 -keyout server.key -config ../config/server.csr.config 

openssl x509 -req -in server.csr -CA ../ssl/root-CA.pem -CAkey ../ssl/root-CA.key -CAcreateserial -out CASerial.srl -out server.crt -days 500 -sha256 -extfile ../extentions/v3.ext