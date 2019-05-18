# deriva-client-bundle-docker
Docker images for building platform specific bundles of [`deriva-client`](https://github.com/informatics-isi-edu/deriva-client).

##### Usage

Release:
```
docker run -it -v ${pwd}:C:\buildenv\build-deriva-client-release\output -w C:\buildenv\build-deriva-client-release --isolation=process isrddev/deriva-client-bundle-base-windows powershell .\build-release.ps1
```

Development:
```
docker run -it -v ${pwd}:C:\buildenv\build-deriva-client-dev\output -w C:\buildenv\build-deriva-client-dev --isolation=process isrddev/deriva-client-bundle-base-windows powershell .\build-dev.ps1
```
