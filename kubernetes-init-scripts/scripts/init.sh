#!/bin/bash

echo y | ssh-keygen -t rsa -b 4096 -f jwtRS256.key -N "" -q &> /dev/null
openssl rsa -in jwtRS256.key -pubout -outform PEM -out jwtRS256.key.pub &> /dev/null

cat << EOF
AIDBOX_CLIENT_SECRET=`pwgen 16 1`
AIDBOX_ADMIN_PASSWORD=`pwgen 16 1`
PGPASSWORD=`pwgen 16 1`
APP_SECRET=`pwgen 16 1`
SECRET_KEY=`pwgen 32 1`

KEY_OPENID_RSA=`base64 jwtRS256.key -w 0`
KEY_OPENID_RSA_PUB=`base64 jwtRS256.key.pub -w 0`
EOF
