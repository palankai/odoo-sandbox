#!/bin/bash

docker build -t odoo-swagger-sandbox-dev .
docker run -ti --rm -p 8069:8069 -v $(pwd)/addons:/mnt/extra-addons -v $(pwd)/odoo/config:/etc/odoo -v $(pwd)/vendor:/mnt/vendor odoo-swagger-sandbox-dev $@
