#!/bin/bash
wsname=$1
[[ $wsname == "" ]] && echo "wsname required" && exit 1
set -x

mkdir .certs
pushd .certs
if [[ ! -f ca.crt ]]; then
    openssl genrsa -out ca.key 2048
    openssl req -new -key ca.key -subj "/CN=rooca" -out ca.csr
    openssl x509 -req -in ca.csr -signkey ca.key -days 3650 -out ca.crt
fi
    
openssl genrsa -out ${wsname}.key 2048
openssl req -new -key ${wsname}.key -subj "/CN=${wsname}" -out ${wsname}.csr
openssl x509 -req -in ${wsname}.csr -CA ca.crt -CAkey ca.key -CAcreateserial -days 3650 -out ${wsname}.crt

kubectl create secret tls ${wsname}-tls --cert=${wsname}.crt --key=${wsname}.key
kubectl get secret
popd
