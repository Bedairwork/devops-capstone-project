#!/bin/bash
set -e
python -m pip install --upgrade pip wheel
pip install -qr requirements.txt
nosetests -v --with-spec --spec-color
