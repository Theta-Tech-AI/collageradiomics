#!/bin/bash
VERSION=`cat VERSION`.dev$GITHUB_RUN_NUMBER
echo $VERSION > VERSION
echo $VERSION
rm -rf dist
python test_setup.py sdist bdist_wheel
twine upload dist/*
