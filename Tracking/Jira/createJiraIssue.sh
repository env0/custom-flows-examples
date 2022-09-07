#!/bin/bash

# create an API Token - https://id.atlassian.com/manage-profile/security/api-tokens

if [[ -z $USER || -z $PASSWORD ]]; then
  echo "Please se USER and PASSWORD"  
  exit 1
fi

if [[ -z $PROJECT_KEY ]]; then
  echo "Please set PROJECT_ID (hint see URL after ...jira/core/projects/PROJECT_KEY/board...) "
  exit 1
fi

if [[ -z $ISSUE_TYPE ]]; then
  echo "Please set ISSUE_TYPE (hint use /rest/api/3/issuetype to retrieve all Issue Types)"
  exit 1
fi

# For a list of ENVIRONMENT VARIABLES exposed by the runner:
# https://docs.env0.com/docs/custom-flows#exposed-env0-system-environment-variables

# See what "fields" are availabe through /rest/api/3/field
# ref: https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/#api-rest-api-3-field-get
curl -u $USER:$PASSWORD -X POST -H \
  "Content-Type: application/json" -H "Accept: application/json" \
  --url https://env0-dev.atlassian.net/rest/api/3/issue \
  --data "{
    \"fields\": {
      \"summary\" : \"env0 Deployment $ENV0_DEPLOYMENT_LOG_ID\",
      \"issuetype\": {  
        \"id\": \"$ISSUE_TYPE\"
      },
      \"project\": {
        \"key\": \"$PROJECT_KEY\"
      }
    }
  }"

