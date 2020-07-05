#!/bin/bash
VERSION=`cat VERSION`.10
echo $VERSION > VERSION
rm -rf dist
python test_setup.py sdist bdist_wheel
twine upload dist/*
