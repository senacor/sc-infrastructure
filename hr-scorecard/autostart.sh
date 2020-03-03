#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "AUTOSTART STARTED IN DIR $DIR"

#deploy environments
echo "AUTOSTART: Deploying contnt of 'deployment' directory"
for d in $(ls $DIR/deployment)
do
  echo "AUTOSTART: >> Deploying $d folder - executing run.sh and docker-compose in database"
  $DIR/deployment/$d/run.sh

  cd $DIR/deployment/$d/frontend
  SETTING_VARIABLE="$(cat $DIR/deployment/$d/config.tmp)"
  eval $SETTING_VARIABLE

  docker-compose -p $FRONTEND_CONTAINER_NAME down
  docker-compose -p $FRONTEND_CONTAINER_NAME up -d
done

echo "AUTOSTART: starting nginx"
cd $DIR/prod-nginx
docker-compose up -d

echo "AUTOSTART DONE"
