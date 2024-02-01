#!/bin/bash

export TFC_TOKEN_api_terraform_io="abcdef"
#echo "TFC_TOKEN_api_terraform_io=${TFC_TOKEN_api_terraform_io}" >> $ENV0_ENV
cat > credentials.tfrc.json.test << EOL
{
  "credentials": {
    "app.terraform.io": {
      "token": "${TFC_TOKEN_api_terraform_io}"
    }
}