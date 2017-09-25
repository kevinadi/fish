function ssl_remove_certs
	rm -f ca.{crt,key,srl}
	rm -f {client,server}.{crt,csr,key,pem}
end
