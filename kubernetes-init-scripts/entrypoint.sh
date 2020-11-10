#!/bin/bash

if [ -z "${AIDBOX_LICENSE_ID}" ]; then
    echo "AIDBOX_LICENSE_ID is required"
    exit 1
fi

if [ -z "${AIDBOX_LICENSE_KEY}" ]; then
    echo "AIDBOX_LICENSE_KEY is required"
    exit 1
fi

if [ -z "${BUCKET}" ]; then
    echo "BUCKET is required"
    exit 1
fi

if [ -z "${BUCKET_GCE_KEY}" ]; then
    echo "BUCKET_GCE_KEY is required"
    exit 1
fi

case $TIER in
    master)
        ./scripts/$1
        ;;
    staging)
        ./scripts/$1
        ;;
    develop)
        ./scripts/$1
        ;;
    *)
        echo "TIER should be either master or staging or develop"
        exit -1
        ;;
esac

