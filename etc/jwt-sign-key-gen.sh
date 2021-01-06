# Usage :
# 	sh jwt-sign-key-gen.sh <cust-name> <env-name>
# 	sh jwt-sign-key-gen.sh cust2 prod

PWD=$(pwgen -scn 8 1)
STORE_NAME=$2-primary.jks
CERT_NAME=$2-primary.crt
TRUST_STORE_NAME=$1-$2-client-truststore.jks
keytool -genkey -alias jwt-sign-key -keyalg RSA -keysize 2048 -validity 730 -keystore ${STORE_NAME}  -dname "CN=jwt.$2.$1.ipaas.cloudcreator.co.nz, OU=paas.cloudcreator.co,O=ipaas.cloudcreator.co,L=EN,S=NZ,C=NZ" -storepass ${PWD} -keypass ${PWD} 
keytool -export -alias jwt-sign-key -file ${CERT_NAME} -keystore ${STORE_NAME}  -storepass ${PWD}
keytool -exportcert -alias test -file $2-primary.pem -rfc -keystore ${STORE_NAME}  -storepass ${PWD}
cp client-truststore-base.jks ${TRUST_STORE_NAME}
keytool -delete -alias gateway_certificate_alias -keystore ${TRUST_STORE_NAME} -storepass wso2carbon
keytool -import -trustcacerts -keystore ${TRUST_STORE_NAME} -alias gateway_certificate_alias -file ${CERT_NAME} -storepass wso2carbon
echo "The following credentials have been created for $1-$2 environment."
echo "Keystore is generated as :  ${STORE_NAME}"
echo "Public certificates is exported as : ${CERT_NAME}"
echo "Keystore password is set to :${PWD}"
echo "Private key password password is set to :${PWD}"
echo "Move ${STORE_NAME} and client-truststore.jks into <API-M_HOME>/repository/resources/security and update deployment.toml."
echo "Make sure to rename ${TRUST_STORE_NAME} client-truststore.jks for each environment."
echo "[keystore.primary] "
echo "file_name =  \"${CERT_NAME}\""
echo "type =  \"JKS\" "
echo "password =  \"${PWD}\" "
echo "alias =  \"jwt-sign-key\" "
echo "key_password = \"${PWD}\" "





