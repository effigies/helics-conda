IF "%PY_VER%"=="2.7" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/cp27/h/helics/helics-%PKG_VERSION%-cp27-cp27m-win_amd64.whl
)

IF "%PY_VER%"=="3.5" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/cp35/h/helics/helics-%PKG_VERSION%-cp35-cp35m-win_amd64.whl
)

IF "%PY_VER%"=="3.6" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/cp36/h/helics/helics-%PKG_VERSION%-cp36-cp36m-win_amd64.whl
)

IF "%PY_VER%"=="3.7" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/cp37/h/helics/helics-%PKG_VERSION%-cp37-cp37m-win_amd64.whl
)

IF "%PY_VER%"=="3.8" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/cp38/h/helics/helics-%PKG_VERSION%-cp38-cp38-win_amd64.whl
)

IF "%ARCH%"=="32" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/py2.py3/h/helics_apps/helics_apps-%PKG_VERSION%-py2.py3-none-win32.whl
) ELSE (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/py2.py3/h/helics_apps/helics_apps-%PKG_VERSION%-py2.py3-none-win_amd64.whl
)
IF "%ARCH%"=="64" (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/py2.py3/h/helics_apps/helics_apps-%PKG_VERSION%-py2.py3-none-win_amd64.whl
) ELSE (
    %PYTHON% -m pip install --no-deps https://pypi.org/packages/py2.py3/h/helics_apps/helics_apps-%PKG_VERSION%-py2.py3-none-win32.whl
)

if errorlevel 1 exit 1
