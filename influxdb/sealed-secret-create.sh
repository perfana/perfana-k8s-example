#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset


kubeseal --namespace perfana --format yaml <secrets-influxdb-credentials.yaml >sealed-secret_influxdb-credentials.yaml
