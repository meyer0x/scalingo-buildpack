#!/bin/bash

if [ "$APP_TO_BUILD" = "api" ] ; then
  exec node apps/api/build/bin/server.js
else
  exec PORT=$PORT node apps/$APP_TO_BUILD/server.js
fi