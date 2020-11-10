#!/bin/bash

source ./scripts/defaults.sh

cat << EOF
apiVersion: v1
data:
  AIDBOX_CLIENT_ID: `echo -n $AIDBOX_CLIENT_ID | base64 -w 0`
  AIDBOX_CLIENT_SECRET: `echo -n $AIDBOX_CLIENT_SECRET | base64 -w 0`
  AIDBOX_LICENSE_ID: `echo -n $AIDBOX_LICENSE_ID | base64 -w 0`
  AIDBOX_LICENSE_KEY: `echo -n $AIDBOX_LICENSE_KEY | base64 -w 0`
  AIDBOX_BASE_URL: `echo -n $AIDBOX_BASE_URL | base64 -w 0`
  AIDBOX_ADMIN_PASSWORD: `echo -n $AIDBOX_ADMIN_PASSWORD | base64 -w 0`
  PGPASSWORD: `echo -n $PGPASSWORD | base64 -w 0`
  PGUSER: `echo -n $PGUSER | base64 -w 0`
  KEY_OPENID_RSA: `echo -n $KEY_OPENID_RSA`
  KEY_OPENID_RSA_PUB: `echo -n $KEY_OPENID_RSA_PUB`
kind: Secret
metadata:
  name: sdc-demo-backend-$TIER-aidbox
  namespace: sdc-demo-backend-$TIER
type: Opaque
EOF
