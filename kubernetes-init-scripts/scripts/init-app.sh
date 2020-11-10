#!/bin/bash

source ./scripts/defaults.sh

cat << EOF
apiVersion: v1
data:
  SECRET_KEY: `echo -n $SECRET_KEY | base64 -w 0`
  AIO_HOST: `echo -n $AIO_HOST | base64 -w 0`
  AIO_PORT: `echo -n $AIO_PORT | base64 -w 0`
  APP_ID: `echo -n $APP_ID | base64 -w 0`
  APP_INIT_CLIENT_ID: `echo -n $AIDBOX_CLIENT_ID | base64 -w 0`
  APP_INIT_CLIENT_SECRET: `echo -n $AIDBOX_CLIENT_SECRET | base64 -w 0`
  APP_INIT_URL: `echo -n http://sdc-demo-backend-$TIER-aidbox:$AIDBOX_PORT | base64 -w 0`
  APP_OVERRIDE_AIDBOX_BASE_URL: `echo -n http://sdc-demo-backend-$TIER-aidbox:$AIDBOX_PORT | base64 -w 0`
  APP_PORT: `echo -n $AIO_PORT | base64 -w 0`
  APP_SECRET: `echo -n $APP_SECRET | base64 -w 0`
  APP_URL: `echo -n http://sdc-demo-backend-$TIER-auto-deploy:$AIO_PORT | base64 -w 0`
  BACKEND_PUBLIC_URL: `echo -n $AIDBOX_BASE_URL | base64 -w 0`
  FRONTEND_URL: `echo -n $FRONTEND_URL | base64 -w 0`
kind: Secret
metadata:
  name: sdc-demo-backend-$TIER-app
  namespace: sdc-demo-backend-$TIER
type: Opaque
EOF
