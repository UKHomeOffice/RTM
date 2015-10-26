#!/bin/bash

# copy assets over to /public for nginx container to serve, only copy if /public
# directory exists, which implies that kubernetes volume has been mounted
PUBLIC_DIR='/public'
if [[ -d ${PUBLIC_DIR} ]] && [[ ! $(ls -A ${PUBLIC_DIR}) ]]; then
  cp -r /app/public/ /
fi

if [ ${DOCKER_COMPOSE} ]
  then npm run dev;
  else npm start;
fi

