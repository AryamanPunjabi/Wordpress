#!/bin/bash
COMPOSE_FILE="myfile.yml"
SITE_NAME="$2"

function start_site() {
  echo "launching $SITE_NAME ......................."
  docker-compose -f $COMPOSE_FILE  up -d
  if [[ $? -eq 0 ]]; then
    echo "The $SITE_NAME has been started."
    prompt_open_site
  else
    echo "Failed"
  fi
}
function stop_site() {
  echo "Stopping the $SITE_NAME ......................"
  docker-compose -f $COMPOSE_FILE stop
  if [[ $? -eq 0 ]]; then
    echo "The $SITE_NAME site has been stopped."
  else
    echo "Failed"
  fi
}
function delete_site() {
  echo "Deleting the $SITE_NAME ..................."
  docker-compose -f $COMPOSE_FILE down -v
  if [[ $? -eq 0 ]]; then
    echo "The $SITE_NAME site has been deleted."
  else
    echo "Failed"
  fi
}
case "$1" in
  start )
    start_site
    ;;
  stop )
    stop_site
    ;;
  delete )
    delete_site
    ;;
  * )
    echo "Usage: $0 [start|stop|delete] <site_name>"
    ;;
esac

