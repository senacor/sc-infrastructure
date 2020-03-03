#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "AUTOSTART STARTED IN DIR $DIR"

#deploy environments
echo "AUTOSTART: Deploying content of 'jenkins-smee-nginx' directory"
cd $DIR/jenkins-smee-nginx
docker-compose up -d

echo "AUTOSTART DONE"
