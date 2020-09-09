#!/bin/bash

# Append github action build number to version in VERSION file.
cd module
VERSION=`cat VERSION`.dev$GITHUB_RUN_NUMBER
echo $VERSION > VERSION

cd core
rm -rf dist
python setup.py sdist bdist_wheel
twine upload dist/*

cd ../types
rm -rf dist
python setup.py sdist bdist_wheel
twine upload dist/*
