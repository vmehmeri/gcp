#! /bin/bash
VALUE_OF_MY_SERVER_ID=$(curl http://metadata.google.internal/computeMetadata/v1/instance/attributes/my-server-id -H "Metadata-Flavor: Google")
apt-get update
apt-get install -y apache2
cat - >  /var/www/html/index.html << EOF
<html><body><h1>Virtual Machine Lab, Architecting GCP Infrastructure </h1>
<p>Server Name is: $VALUE_OF_MY_SERVER_ID</p>
</body></html>
EOF
