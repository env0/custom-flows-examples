# IAM Profiles

You may be deploying to many different aws accounts, or simply using a central AWS account for your backend.
In which case your provider or backend configuration may use the `profile` parameter to define the credentials to use.

In env0, you could use a custom-flow to prepare the profile (aws config file)

See: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html for more details
