FROM mcr.microsoft.com/windows:1809-amd64
MAINTAINER mdarcy@isi.edu

COPY buildenv /buildenv
WORKDIR /buildenv/install
RUN powershell -Command set-executionpolicy remotesigned; .\install.ps1
WORKDIR /buildenv
