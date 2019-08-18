#!/usr/bin/env bash

set -e # exit on failure
set -x # log all executed commands

ansible-playbook playbooks/control.yml
ansible-playbook playbooks/database.yml
ansible-playbook playbooks/webserver.yml
ansible-playbook playbooks/loadbalancer.yml

set +x
set +e
