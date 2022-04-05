#!/usr/bin/env bash
if [[ "$#" -lt 1 ]]; then
  echo "Usage:"
  echo "$1 <values file>"

  exit
fi


helm upgrade --install --force --values ${1} --namespace perfana influxdb influxdata/influxdb
