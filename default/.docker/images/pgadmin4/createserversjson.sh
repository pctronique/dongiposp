#!/bin/bash

PGADMIN_FOLDER_PROG=/pgadmin4/

if [ -z ${PGADMIN_SGBD_DATABASE} ]
then
    PGADMIN_SGBD_DATABASE=project
fi

if [ -z ${PGADMIN_SGBD_NAME} ]
then
    PGADMIN_SGBD_NAME=${PGADMIN_SGBD_DATABASE}
fi

if [ -z ${PGADMIN_SGBD_USER} ]
then
    PGADMIN_SGBD_USER=root
fi

if [ -z ${PGADMIN_SGBD_PASSWORD} ]
then
    PGADMIN_SGBD_PASSWORD=secret
fi

if [ -z ${PGADMIN_SGBD_PORT} ]
then
    PGADMIN_SGBD_PORT=5432
fi

if [ -z ${PGADMIN_SGBD_GROUP} ]
then
    PGADMIN_SGBD_GROUP=${PGADMIN_SGBD_DATABASE}
fi

if [ -z ${PGADMIN_SGBD_HOST} ]
then
    PGADMIN_SGBD_HOST=localhost
fi

rm -rf ${PGADMIN_FOLDER_PROG}/servers.json
touch ${PGADMIN_FOLDER_PROG}/servers.json

rm -rf ${PGADMIN_FOLDER_PROG}/pgpass
touch ${PGADMIN_FOLDER_PROG}/pgpass

echo "{" >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "    \"Servers\": {" >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "      \"1\": {" >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"Name\": \"${PGADMIN_SGBD_NAME}\"," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"Port\": ${PGADMIN_SGBD_PORT}," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"Username\": \"${PGADMIN_SGBD_USER}\"," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"Group\": \"${PGADMIN_SGBD_GROUP}\"," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"Host\": \"${PGADMIN_SGBD_HOST}\"," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"SSLMode\": \"prefer\"," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"PassFile\": \"${PGADMIN_FOLDER_PROG}/pgpass\"," >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "        \"MaintenanceDB\": \"${PGADMIN_SGBD_DATABASE}\"" >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "      }" >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "    }" >> ${PGADMIN_FOLDER_PROG}/servers.json
echo "}" >> ${PGADMIN_FOLDER_PROG}/servers.json

echo "${PGADMIN_SGBD_HOST}:${PGADMIN_SGBD_PORT}:*:${PGADMIN_SGBD_USER}:${PGADMIN_SGBD_PASSWORD}" >> ${PGADMIN_FOLDER_PROG}/pgpass

chmod 600 ${PGADMIN_FOLDER_PROG}/pgpass
