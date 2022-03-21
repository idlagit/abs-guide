#!/bin/bash
# install application using helm chart
helm install absguide-app ./charts/absguide/

# display application url
echo Internal url is http://$NODE_IP:$NODE_PORT
echo External url is http://localhost:$NODE_PORT
