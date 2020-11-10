#!/bin/bash

PGUSER=postgres

AIO_HOST=0.0.0.0
AIO_PORT=8081
APP_ID=app-sdc-demo
AIDBOX_PORT=8080
AIDBOX_CLIENT_ID=root

case $TIER in
    master)
        AIDBOX_BASE_URL=https://master-backend.sdc-demo.beda.software
        FRONTEND_URL=https://master.sdc-demo.beda.software
        ;;
    staging)
        AIDBOX_BASE_URL=https://staging-backend.sdc-demo.beda.software
        FRONTEND_URL=https://staging.sdc-demo.beda.software
        ;;
    develop)
        AIDBOX_BASE_URL=https://develop-backend.sdc-demo.beda.software
        FRONTEND_URL=https://develop.sdc-demo.beda.software
        ;;
esac
