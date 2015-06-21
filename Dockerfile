FROM odoo:8
MAINTAINER Csaba Palankai <csaba.palankai@gmail.com>

USER root

RUN apt-get update && apt-get install python-setuptools
ADD submodules/json-serializer /opt/json-serializer
RUN (cd /opt/json-serializer; python setup.py develop)

USER odoo
