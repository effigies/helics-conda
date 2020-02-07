#!/bin/bash

if [ `uname` == Darwin ]; then
    if [ "$PY_VER" == "2.7" ]; then
        WHL_FILE=https://pypi.org/packages/cp27/h/helics/helics-${PKG_VERSION}-cp27-cp27m-macosx_10_9_intel.whl
    elif [ "$PY_VER" == "3.5" ]; then
        WHL_FILE=https://pypi.org/packages/cp35/h/helics/helics-${PKG_VERSION}-cp35-cp35m-macosx_10_9_intel.whl
    elif [ "$PY_VER" == "3.6" ]; then
        WHL_FILE=https://pypi.org/packages/cp36/h/helics/helics-${PKG_VERSION}-cp36-cp36m-macosx_10_9_intel.whl
    elif [ "$PY_VER" == "3.7" ]; then
        WHL_FILE=https://pypi.org/packages/cp37/h/helics/helics-${PKG_VERSION}-cp37-cp37m-macosx_10_9_intel.whl
    fi
fi

if [ `uname` == Linux ]; then
    if [ "$PY_VER" == "2.7" ]; then
        WHL_FILE=https://pypi.org/packages/cp27/h/helics/helics-${PKG_VERSION}-cp27-cp27mu-manylinux2010_x86_64.whl
    elif [ "$PY_VER" == "3.5" ]; then
        WHL_FILE=https://pypi.org/packages/cp35/h/helics/helics-${PKG_VERSION}-cp35-cp35m-manylinux2010_x86_64.whl
    elif [ "$PY_VER" == "3.6" ]; then
        WHL_FILE=https://pypi.org/packages/cp36/h/helics/helics-${PKG_VERSION}-cp36-cp36m-manylinux2010_x86_64.whl
    elif [ "$PY_VER" == "3.7" ]; then
        WHL_FILE=https://pypi.org/packages/cp37/h/helics/helics-${PKG_VERSION}-cp37-cp37m-manylinux2010_x86_64.whl
    fi
fi

pip install --no-deps $WHL_FILE
