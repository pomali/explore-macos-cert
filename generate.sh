openssl req -nodes -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365 \
  -subj "/C=SK/ST=Test/L=Test/O=Test/CN=localhost/"
