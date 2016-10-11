function ssl_generate_pem
	openssl req -newkey rsa:2048 -new -x509 -days 365 -nodes -out cert.crt -keyout cert.key
    cat cert.key cert.crt >self_signed.pem
    rm cert.key cert.crt
end
