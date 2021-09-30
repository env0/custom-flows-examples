# tflint in custom flow

I wanted to insure that tflint had been run by the developer before they create a PR.  This custom workflow run tflint before running terraform init.  If tflint finds any issues it will cause env0 to report as failed prior to running terraform plan.  

For more information on tflint go here: https://github.com/terraform-linters/tflint

## .tflint.hcl

The .tflint.hcl file is used by tflint to load plugins that extend the rules it uses.  This includes rules specific to different cloud environments like AWS, Azure, or GPC.  In my repo, I have sub-folders from which I create separate env0 templates.  I want a single .tflint.hcl file for each so I have included a step to copy that file from the root to the working directory.  You will want to make sure that path is correct for your specific repository.

Other options can be configured in this file too.  https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md

I have included and example .tflint.hcl file for reference
