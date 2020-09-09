#!/bin/bash

# Put wheels and source to dist directories.
python core/setup.py sdist bdist_wheel
python types/setup.py sdist bdist_wheel

# Upload binary and source files to PyPI.
twine upload core/dist/*
twine upload types/dist/*