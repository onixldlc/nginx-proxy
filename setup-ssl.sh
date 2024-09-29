#!/bin/bash

# Directory where to save the SSL certificates
SSL_DIR="./ssl"

# Create the SSL directory if it doesn't exist
mkdir -p ${SSL_DIR}

# Set the domain name
DOMAIN="localhost"

# Generate a private key
openssl genrsa -out ${SSL_DIR}/${DOMAIN}.key 2048

# Generate a certificate signing request (CSR)
openssl req -new -key ${SSL_DIR}/${DOMAIN}.key -out ${SSL_DIR}/${DOMAIN}.csr -subj "/C=US/ST=YourState/L=YourCity/O=YourOrganization/CN=${DOMAIN}"

# Generate a self-signed certificate
openssl x509 -req -days 365 -in ${SSL_DIR}/${DOMAIN}.csr -signkey ${SSL_DIR}/${DOMAIN}.key -out ${SSL_DIR}/${DOMAIN}.crt

# Print completion message
echo "SSL certificates generated in ${SSL_DIR}"
