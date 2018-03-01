#!/bin/sh
set -e

sudo timedatectl set-timezone Europe/Zurich

sudo yum -y install epel-release
sudo yum -y install mock rpmdevtools rpmbuild yum-utils diff patch scl-utils scl-utils-build vim
sudo mock --init -r epel-7-x86_64
sudo useradd mockbuild
sudo usermod mockbuild -aG mock
rpmdev-setuptree
echo '%_sourcedir %{_topdir}/SOURCES/%{name}' >> $HOME/.rpmmacros
