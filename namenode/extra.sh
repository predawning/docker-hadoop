#!/bin/bash

function addProperty() {
  local path=$1
  local name=$2
  local value=$3

  local entry="<property><name>$name</name><value>${value}</value></property>"
  local escapedEntry=$(echo $entry | sed 's/\//\\\//g')
  sed -i "/<\/configuration>/ s/.*/${escapedEntry}\n&/" $path
}

if [ "$MULTIHOMED_NETWORK" = "1" ]; then
    # MAPRED
    addProperty /etc/hadoop/mapred-site.xml mapreduce.framework.name yarn
fi

exec $@
