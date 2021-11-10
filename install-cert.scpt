#!/usr/bin/env osascript
do shell script "security add-trusted-cert -d -r trustRoot -p basic -p ssl -k /Library/Keychains/System.keychain cert.pem" with administrator privileges
