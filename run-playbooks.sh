#!/usr/bin/env bash

set -e # exit on failure
set -x # log all executed commands

ansible-playbook control.yml
ansible-playbook database.yml
ansible-playbook webserver.yml
ansible-playbook loadbalancer.yml
ansible-playbook stack_status.yml

set +x
set +e
