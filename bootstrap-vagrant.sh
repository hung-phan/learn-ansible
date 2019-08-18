#!/usr/bin/env bash

set -e # exit on failure
set -x # log all executed commands

vagrant destroy -f
vagrant up

set +x
set +e
