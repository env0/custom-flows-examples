# Connecting [Checkov](https://www.checkov.io) with Env0

## Install
Simply use `pip3 install checkov` to install the binary.

## Usage
`checkov -f tf-plan.json` to run checkov against the plan.

For more information on how to use checkov (from bridgecrew) check out the following docs:
https://www.checkov.io/1.Welcome/Quick%20Start.html

---

Useful flags:

* Quiet mode (only display failed checks) with `--quiet`
* Compact mode (no code blocks) `--compact`
* Warning only mode with `--soft-fail`

