#!/bin/bash

set -ex

tox || true

python3.5 setup.py sdist

read -p "Upload? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  python3.5 setup.py sdist upload
fi
