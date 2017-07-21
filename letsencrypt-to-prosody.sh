#!/bin/bash

DIR1="domain1.com"
DIR2="domain2.com"
DIR3="domain3.com"
LE_DIR="/etc/letsencrypt/live/"
CERTS="/etc/prosody/certs/"
PROSODY="/etc/prosody/"

   cp -rfL "${LE_DIR}${DIR1}/" "${CERTS}"
   cp -rfL "${LE_DIR}${DIR2}/" "${CERTS}"
   cp -rfL "${LE_DIR}${DIR3}/" "${CERTS}"
   
   chown -R prosody:prosody "${PROSODY}"
   chmod -R 700 "${CERTS}"
   prosodyctl reload
