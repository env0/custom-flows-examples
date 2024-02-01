# Setting up TFC Token in env0

## Background
Sometimes you're in the middle of migrating your Terraform Workspaces, and/or simply you have a mixed platform and want to reference TFC workspaces or modules. In order to be able to use or reference those workspaces or modules outside of TFC, you'll need to configure credentials.

## HowTo

### Option 1 - Environment Variable TF_TOKEN_api_terraform_io
If you're targeting any version below TF 1.2 you might need to resort to setting up a credentials file.
However, above TF 1.2, you can take advantage of the environment variable.
Set the environment variable `TF_TOKEN_api_terraform_io` with your TF token. 
You can set the environment variable directly in the UI, or with a custom flow (env0.yaml).


### Option 2 - Credentials File
For Terraform version below or for mixed versions, you can setup a credentials file.
See the [env0.yaml](env0.yaml) example in this repo to see how the file could be configured from the custom flow.

Further Reading:
https://developer.hashicorp.com/terraform/cli/v1.1.x/config/config-file