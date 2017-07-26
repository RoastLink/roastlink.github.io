# roastlink.github.io
website to simplify RancherOS services


On my 10.10.10.23 server (arian), I run

```
#apt-cacher-ng
docker run -d -p 3142:3142 --restart=always --name apt-cacher -v /var/cache/apt-cacher-ng:/var/cache/apt-cacher-ng svendowideit/apt-cacher-ng
#a docker registry
docker run -d -p 5000:5000 --name registry --restart always registry
#a hub registry mirror
docker run -d --name mirror -v /local/path/to/mirror:/registry -e STORAGE_PATH=/registry -e STANDALONE=false -e MIRROR_SOURCE=https:/registry-1.docker.io -e MIRROR_SOURCE_INDEX=https://index.docker.io -p 5555:5000 registry
```
