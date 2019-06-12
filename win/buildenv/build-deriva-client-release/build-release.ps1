pip install urllib3==1.24.3 2>&1 | %{"$_"}
pip install setuptools_scm 2>&1 | %{"$_"}
pip install deriva-client[all] 2>&1 | %{"$_"}
git clone https://github.com/informatics-isi-edu/deriva-client-bundle 2>&1 | %{"$_"}
cd deriva-client-bundle
python setup.py bdist_msi 2>&1 | %{"$_"}
cp dist\* ..\output
python .\version.py > ..\output\deriva-client-bundle-version.txt
