#!/bin/bash

# Append github action build number to version in VERSION file.
VERSION=`cat VERSION`.dev$GITHUB_RUN_NUMBER
echo $VERSION > VERSION

# Remove any straggling binaries.
rm -rf dist

# Put wheels and source to dist directories.
python module/core/setup.py sdist bdist_wheel
python module/types/setup.py sdist bdist_wheel

# Upload binary and source files to PyPI.
twine upload dist/*