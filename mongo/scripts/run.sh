#!/bin/bash


gosu mongodb mongod --bind_ip_all  --sslMode allowSSL   --sslPEMKeyFile /etc/ssl/mongodb.pem 
