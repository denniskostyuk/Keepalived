#!/bin/bash
if [[ $(netstat -ltn | grep :80) ]] && [[ -f /var/www/html/index.nginx-debian.html ]]; then
  exit 0
else
  exit 1
fi
