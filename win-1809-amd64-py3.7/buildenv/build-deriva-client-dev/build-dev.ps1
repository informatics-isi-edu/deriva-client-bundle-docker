function ErrorExit {
    if ($LASTEXITCODE -ne 0) { throw "Command returned exit code: $LASTEXITCODE" }
}
pip install pyqt5==5.15.2 2>&1 | %{"$_"}; ErrorExit
pip install setuptools_scm 2>&1 | %{"$_"}; ErrorExit
pip install portalocker<=2.0.0  2>&1 | %{"$_"}; ErrorExit
pip install bdbag[boto,globus] 2>&1 | %{"$_"}; ErrorExit
pip install bdbag_gui 2>&1 | %{"$_"}; ErrorExit
pip install fair-research-login 2>&1 | %{"$_"}; ErrorExit
pip install fair-identifiers-client 2>&1 | %{"$_"}; ErrorExit
pip install git+https://github.com/informatics-isi-edu/deriva-py.git 2>&1 | %{"$_"}; ErrorExit
pip install git+https://github.com/informatics-isi-edu/deriva-qt.git 2>&1 | %{"$_"}; ErrorExit
pip install deriva-catalog-manage[csv]@git+https://github.com/informatics-isi-edu/deriva-catalog-manage.git 2>&1 | %{"$_"}; ErrorExit
git clone https://github.com/informatics-isi-edu/deriva-client-bundle 2>&1 | %{"$_"}; ErrorExit
cd deriva-client-bundle
python setup.py bdist_msi 2>&1 | %{"$_"}; ErrorExit
cp dist\* ..\output
python .\version.py > ..\output\deriva-client-bundle-version.txt; ErrorExit
