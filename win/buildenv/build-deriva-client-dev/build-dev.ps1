pip install pyqt5==5.11.3
pip install setuptools_scm
pip install bdbag[boto,globus]
pip install git+https://github.com/informatics-isi-edu/deriva-py.git
pip install git+https://github.com/informatics-isi-edu/deriva-qt.git
pip install git+https://github.com/informatics-isi-edu/deriva-catalog-manage.git
git clone https://github.com/informatics-isi-edu/deriva-client-bundle
cd deriva-client-bundle
python setup.py bdist_msi
cp dist\* ..\output
