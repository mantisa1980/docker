FROM ubuntu:14.04
MAINTAINER duyhsieh from mantisa1980@gmail.com

RUN apt-get update && \
apt-get -y install software-properties-common && \
add-apt-repository ppa:maxmind/ppa -y && \
apt-get update && apt-get install -y python-pip python-dev build-essential python git subversion && \
apt-get clean

# ADD cannot access global host file; 
RUN pip install gunicorn gevent==1.1.2 gevent-websocket websocket-client falcon pymongo==2.8 redis \
falcon_cors enum34 hash_ring geoip2 simplejson pycrypto requests_oauthlib httpagentparser APNSWrapper \
gcm boto boto3 google-api-python-client monthdelta

