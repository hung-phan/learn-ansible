#!/usr/bin/env bash

set -e # exit on failure
set -x # log all executed commands

ansible-playbook --ask-vault-pass site.yml
ansible-playbook --ask-vault-pass stack_status.yml

set +x
set +e
