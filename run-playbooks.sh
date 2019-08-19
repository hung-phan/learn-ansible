#!/usr/bin/env bash

set -e # exit on failure
set -x # log all executed commands

ansible-playbook site.yml
ansible-playbook stack_status.yml

set +x
set +e
