pip install pyqt5==5.11.3 2>&1 | %{"$_"}
pip install setuptools_scm 2>&1 | %{"$_"}
pip install bdbag[boto,globus] 2>&1 | %{"$_"}
pip install bdbag_gui 2>&1 | %{"$_"}
pip install fair-research-login 2>&1 | %{"$_"}
pip install git+https://github.com/informatics-isi-edu/deriva-py.git 2>&1 | %{"$_"}
pip install git+https://github.com/informatics-isi-edu/deriva-qt.git 2>&1 | %{"$_"}
pip install deriva-catalog-manage[csv]@git+https://github.com/informatics-isi-edu/deriva-catalog-manage.git 2>&1 | %{"$_"}
git clone https://github.com/informatics-isi-edu/deriva-client-bundle 2>&1 | %{"$_"}
cd deriva-client-bundle
python setup.py bdist_msi 2>&1 | %{"$_"}
cp dist\* ..\output
python .\version.py > ..\output\deriva-client-bundle-version.txt
