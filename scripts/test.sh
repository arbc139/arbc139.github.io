#!/bin/bash
# Use case
# ./script/test.sh HOST=${IP} PORT=${PORT}

# Example
# ./script/test.sh HOST=255.255.255.32 PORT=6000
# 	HOST = 255.255.255.32
#	PORT = 6000
# ./script/test.sh HOST=255.255.255.32
#	HOST = 255.255.255.32
#	PORT = 4000

PORT=4000
# Parses arguments...
for ARGUMENT in "$@"
do
  KEY=$(echo $ARGUMENT | cut -f1 -d=)
  VALUE=$(echo $ARGUMENT | cut -f2 -d=)
  case "$KEY" in
    HOST)  HOST=${VALUE} ;;
    PORT)  PORT=${VALUE} ;;
    *)
  esac
done

echo "Host: $HOST"
echo "Port: $PORT"
jekyll serve --host=$HOST --port=$PORT
