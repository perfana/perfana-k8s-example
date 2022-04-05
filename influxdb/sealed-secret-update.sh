#!/bin/bash


set -o errexit
set -o pipefail
set -o nounset


kubeseal --namespace perfana --format yaml <secrets-influxdb-credentials.yaml --merge-into sealed-secret_influxdb-credentials.yaml
