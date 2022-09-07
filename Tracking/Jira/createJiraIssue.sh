#!/bin/bash

# create an API Token - https://id.atlassian.com/manage-profile/security/api-tokens

if [[ -z $USERNAME || -z $PASSWORD ]]; then
  echo "Please set USERNAME and PASSWORD"  
  exit 1
fi

curl -u USERNAME:PASSWORD -X GET -H "Content-Type: application/json" https://env0-dev.atlassian.ne/rest/api/2/issue/createmeta
