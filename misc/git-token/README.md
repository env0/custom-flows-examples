# HTTPS Source for Modules 
When using https source in your module registry for example:

```
module "foo" {
  source = "https://git.acme.com/terraform/code"
}
```

This requires Terraform to clone the module using a git token. 
The env0 runner, however, does not know what token or the repo.
So we need to configure git, using env0's [custom-flows](https://docs.env0.com/docs/custom-flows),
and `git config url.<base>.insteadof` as described [here](https://git-scm.com/docs/git-config).

For example:
`git config --global url.https://user:$ENV0_VCS_ACCESS_TOKEN@git.acme.com/.insteadOf https://git.acme.com/`

NOTE: 
* We try to take advantage of your VCS existing integration, 
  and env0 has a copy of the token: `ENV0_VCS_ACCESS_TOKEN`.
* Depending on your VCS integration, the user name may already be embedded 
with `ENV0_VCS_ACCESS_TOKEN` in which case we need take out the hard-coded username
and run the command like this instead: `git config --global url.https://$ENV0_VCS_ACCESS_TOKEN@$REPO/.insteadOf https://$REPO/`