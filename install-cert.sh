
#sudo security -v add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain cert.pem
sudo security -v add-trusted-cert -d -e hostnameMismatch -r trustRoot -p basic -p ssl -k /Library/Keychains/System.keychain cert.pem
