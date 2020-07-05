#!/bin/bash
VERSION=`cat VERSION`.$GITHUB_RUN_NUMBER
echo $VERSION > VERSION
rm -rf dist
python test_setup.py sdist bdist_wheel
twine upload dist/*
