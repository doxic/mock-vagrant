# mock-vagrant
https://blog.packagecloud.io/eng/2015/05/11/building-rpm-packages-with-mock/
https://kyle.io/2015/02/building-nginx-srpms/
https://github.com/GetPageSpeed/nginx-citrus-rpm
https://stelfox.net/notes/rpm-build/


Running
```
vagrant up
vagrant putty
```

Downloading existing source packages
```
yumdownloader --source nginx
rpm -ivh nginx*.src.rpm
rm nginx*.src.rpm
```
download source
```
spectool -g -C ~/rpmbuild/SOURCES ~/rpmbuild/SPECS/nginx.spec
```

getting dependencies
```
rpmbuild -ba ~/rpmbuild/SPECS/nginx.spec
sudo yum install -y gperftools-devel openssl-devel pcre-devel zlib-devel GeoIP-devel gd-devel perl-devel perl libxslt-devel
```
