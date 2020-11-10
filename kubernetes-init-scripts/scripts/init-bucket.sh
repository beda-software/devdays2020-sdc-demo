#!/bin/bash

source ./scripts/defaults.sh

cat << EOF
apiVersion: v1
data:
  BUCKET: `echo -n $BUCKET | base64 -w 0`
  BUCKET_GCE_KEY: `echo -n $BUCKET_GCE_KEY | base64 -w 0`
kind: Secret
metadata:
  name: sdc-demo-backend-$TIER-bucket
  namespace: sdc-demo-backend-$TIER
type: Opaque
EOF
