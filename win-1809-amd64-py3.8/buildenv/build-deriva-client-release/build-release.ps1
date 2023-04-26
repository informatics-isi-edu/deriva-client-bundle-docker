function ErrorExit {
    if ($LASTEXITCODE -ne 0) { throw "Command returned exit code: $LASTEXITCODE" }
}
pip install setuptools_scm 2>&1 | %{"$_"}; ErrorExit
pip install cryptography<39.0.0 2>&1 | %{"$_"}; ErrorExit
pip install deriva-client 2>&1 | %{"$_"}; ErrorExit
pip install deriva-workbench 2>&1 | %{"$_"}; ErrorExit
pip install deriva-catalog-manage[csv] 2>&1 | %{"$_"}; ErrorExit
git clone https://github.com/informatics-isi-edu/deriva-client-bundle 2>&1 | %{"$_"}; ErrorExit
cd deriva-client-bundle
python setup.py bdist_msi 2>&1 | %{"$_"}; ErrorExit
cp dist\* ..\output
python .\version.py > ..\output\deriva-client-bundle-version.txt; ErrorExit
