#!/usr/bin/env bash

set -e # exit on failure
set -x # log all executed commands

./clean-vagrant.sh
./run-playbooks.sh

set +x
set +e
