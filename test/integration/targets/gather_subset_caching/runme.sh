#!/usr/bin/env bash

set -eux


export ANSIBLE_GATHERING=smart
export ANSIBLE_CACHE_PLUGIN=jsonfile
export ANSIBLE_CACHE_PLUGIN_CONNECTION=/tmp/facts_cache

ansible-playbook playbook1.yml --flush-cache -i ../../inventory -v "$@"
ansible-playbook playbook2.yml -i ../../inventory -v "$@"
