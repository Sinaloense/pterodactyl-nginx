#!/bin/bash
cd /home/container

# Output Current Nginx Version
nginx -v

# Create logs directory
mkdir -p /home/container/logs

# create tmp directory
mkdir -p /home/container/tmp

# create html directory
mkdir -p /home/container/html

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${PRINT_SAFE_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
