#!/bin/bash

# Append github action build number to version in VERSION file.
VERSION=`cat VERSION`.dev$GITHUB_RUN_NUMBER
echo $VERSION > VERSION

# Remove any straggling binaries.
rm -rf core/dist
rm -rf types/dist

# Put wheels and source to dist directories.
python core/setup.py sdist bdist_wheel
python types/setup.py sdist bdist_wheel

# Upload binary and source files to PyPI.
twine upload core/dist/*
twine upload types/dist/* 