#!/bin/bash

if [ "$APP_TO_BUILD" = "api" ] ; then
  exec node apps/api/build/bin/server.js
else
  # Ensure PORT is set, use a default if not provided
  PORT=${PORT}
  echo "Starting $APP_TO_BUILD on port $PORT"
  exec node /$BUILD_DIR/apps/$APP_TO_BUILD/server.js
fi
