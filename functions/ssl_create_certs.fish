function ssl_create_certs
	# Generate self signed root CA cert
openssl req -nodes -x509 -days 365 -newkey rsa:2048 -keyout ca.key -out ca.crt -subj "/C=AU/ST=NSW/L=Sydney/O=MongoDB/OU=root/CN="(hostname -f)"/emailAddress=me@mongodb.com"


# Generate server cert to be signed
openssl req -nodes -newkey rsa:2048 -days 365 -keyout server.key -out server.csr -subj "/C=AU/ST=NSW/L=Sydney/O=MongoDB/OU=server/CN="(hostname -f)"/emailAddress=me@mongodb.com"

# Sign the server cert
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt

# Create server PEM file
cat server.key server.crt > server.pem


# Generate client cert to be signed
openssl req -nodes -newkey rsa:2048 -days 365 -keyout client.key -out client.csr -subj "/C=AU/ST=NSW/L=Sydney/O=MongoDB/OU=client/CN="(hostname -f)"/emailAddress=me@mongodb.com"

# Sign the client cert
openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -CAserial ca.srl -out client.crt

# Create client PEM file
cat client.key client.crt > client.pem
end
