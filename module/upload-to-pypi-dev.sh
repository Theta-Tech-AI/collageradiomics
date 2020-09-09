#!/bin/bash
VERSION=`cat VERSION`.dev$GITHUB_RUN_NUMBER
echo $VERSION > VERSION
rm -rf dist
python setup.py sdist bdist_wheel
twine upload dist/*
