pip install setuptools_scm
pip install deriva-client
git clone https://github.com/informatics-isi-edu/deriva-client-bundle
cd deriva-client-bundle
python setup.py bdist_msi
cp dist\* ..\output
python .\version.py > ..\output\deriva-client-bundle-version.txt
