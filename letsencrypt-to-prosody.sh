#!/bin/bash

letsencrypt="/etc/letsencrypt/live/yoursite.com/"
certs="/etc/prosody/certs/"
prosody="/etc/prosody/"

   find "${letsencrypt}" -name "*.pem" | while read -r file

do

   cp "${file}" "${certs}"
   chown -R prosody:prosody "${prosody}"
   chmod -R 700 "${certs}"

done
