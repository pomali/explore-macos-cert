
#sudo security -v add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain cert.pem
security -v add-trusted-cert -d -r trustRoot -p basic -p ssl -k ~/Library/Keychains/login.keychain-db cert.pem

# hostname mismatch
# security -v add-trusted-cert -d -e hostnameMismatch -r trustRoot -p basic -p ssl -k ~/Library/Keychains/login.keychain-db cert.pem

# global
#sudo security -v add-trusted-cert -d -e hostnameMismatch -r trustRoot -p basic -p ssl -k /Library/Keychains/System.keychain cert.pem
