function ssl_generate_cert
	openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -nodes
end
