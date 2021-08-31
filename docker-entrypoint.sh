#!/bin/bash

if [ ! -f ./conf.py ] && [ ! -f ./source/conf.py ]; then
    echo "== Sphinx docs is not initialized =="
    echo " - Map a volume to /docs to work on existing documentaiton"
    echo " - Run sphinx-quickstart to create a new set of documentation"
    tail -F /dev/null
fi

sphinx-autobuild source build/html --host 0.0.0.0 --port 8000 
