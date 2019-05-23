# deriva-client-bundle-docker
Docker images for building platform specific bundles of [`deriva-client`](https://github.com/informatics-isi-edu/deriva-client).

## Usage: Windows
The Windows docker image requires a Docker for Windows installation on a Windows OS host with OS build `1809` and machine architecture `amd64`.

### Build `deriva-client-bundle` release installer:
```
docker run -v ${pwd}:C:\buildenv\build-deriva-client-release\output -w C:\buildenv\build-deriva-client-release --isolation=process isrddev/deriva-client-bundle-base-windows powershell .\build-release.ps1
```

### Build `deriva-client-bundle` development installer:
```
docker run -v ${pwd}:C:\buildenv\build-deriva-client-dev\output -w C:\buildenv\build-deriva-client-dev --isolation=process isrddev/deriva-client-bundle-base-windows powershell .\build-dev.ps1
```

### Build `isrddev/deriva-client-bundle-base-windows` image:

From the `win` subdirectory:
```
docker build -t isrddev/deriva-client-bundle-base-windows --isolation=process .
```
