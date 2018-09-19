#!/bin/bash

set -e

helm init -c
helm package . --version 0.$1.0

status_code=$(curl --write-out %{http_code} --fail --silent --output /dev/null --data-binary "@web-api-0.$1.0.tgz" $2api/charts)
if [[ "$status_code" -gt 299 ]] ; then
  echo "push to chart museum failed"
  exit 1
else
  echo "push to chart museum succeed"
  exit 0
fi