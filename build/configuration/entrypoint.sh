#!/bin/sh
set -e  # Exit on error

echo "Extracting war files..."

unzip ${CATALINA_HOME}/webapps/digx-shared-libs.war -d ${CATALINA_HOME}/webapps/digx-shared-libs/

echo "Starting Apache..."

exec ${CATALINA_HOME}/bin/catalina.sh 

exec "$@"