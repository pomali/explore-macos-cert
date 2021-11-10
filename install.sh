#!/bin/bash

#((EUID != 0)) && exec sudo -- "$0" "$@"
#cd /tmp/ &>/dev/null
#clear
##
#crturl="https://scriptops.corp/CertEnroll/"
#rootfingerprint="1E:FD:F9:7F:92:A8:40:48:AD:AA:3F:A9:DB:0C:6E:86:6D:2C:B0:77:0D:13:EC:6D:9B:E7:77:44:B5:B8:31:D1"
#rootcrtfile=Corporate\ Root\ CA.crt
#declare -a crtfilelist
#crtfilelist=(Corporate\ Intermediate\ CA\ 2.crt Corporate\ Intermediate\ CA\ 1.crt)
##
#curl -# --proto =https --url $crturl${rootcrtfile// /%20} -k -o "$rootcrtfile"
#diff -as --label "Expected CA Fingerprint" <(echo "SHA256 Fingerprint=$rootfingerprint") --label "Downloaded CA Fingerprint" <(openssl x509 -noout -in "./$rootcrtfile" -fingerprint -sha256)
#if [ $? -ne 0 ]; then
#	echo "Downloaded certificate fingerprint mismatch!"
#	cd - &>/dev/null
#	sudo -k
#	rm "$rootcrtfile"
#    exit 1
#fi
security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain "$rootcrtfile"
##
#for crtfile in "${crtfilelist[@]}"; do
#	curl -# --proto =https --url $crturl${crtfile// /%20} -k -o "$crtfile"
#	security add-trusted-cert -d -r trustAsRoot -k /Library/Keychains/System.keychain "$crtfile"
#done
##
#cd - &>/dev/null
#sudo -k
#exit 0
