#!/bin/bash
COMPOSE_FILE="myfile.yml"
SITE_NAME="$2"

function start_site() {
  if [[ -z $SITE_NAME ]]; then
    echo "Please provide a site name."
    exit 1
  fi

  echo "Launching $SITE_NAME..."
  docker-compose -f $COMPOSE_FILE up -d

  if [[ $? -eq 0 ]]; then
    echo "127.0.0.1 $SITE_NAME" | sudo tee -a /etc/hosts

    echo "The $SITE_NAME has been started."
    echo "WordPress site created successfully."
    echo "Please open http://$SITE_NAME in your browser."
  else
    echo "Failed to start the site."
  fi
}

function stop_site() {
  echo "Stopping the $WEBSITE_NAME ......................"
  docker-compose -f $COMPOSE_FILE stop
  if [[ $? -eq 0 ]]; then
    echo "The $WEBSITE_NAME site has been stopped."
  else
    echo "Failed"
  fi
}
function delete_site() {
  echo "Deleting the $WEBSITE_NAME ..................."
  docker-compose -f $COMPOSE_FILE down -v
  if [[ $? -eq 0 ]]; then
    echo "The $WEBSITE_NAME site has been deleted."
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
    ;;
esac

