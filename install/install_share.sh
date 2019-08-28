#!/bin/sh

# This base ya, needs work ...
export BASE=/var/socat/share

cd ./share

cp -r ./doc ${BASE}
chmod -R 777 ${BASE}/doc

cp -r ./data ${BASE}
chmod -R 777 ${BASE}/data
