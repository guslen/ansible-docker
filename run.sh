#!/bin/sh

if [[ -f "./requirements.yml" ]]; then
    ansible-galaxy collection install -r requirements.yml
else
    echo "no requirements.yml"
fi

ansible-playbook "$@"