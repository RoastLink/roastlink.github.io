# roastlink.github.io
website to simplify RancherOS services


On my 10.10.10.23 server (arian), I run

```
#apt-cacher-ng
docker run -d --network host --restart=always --name apt-cacher -v /var/cache/apt-cacher-ng:/var/cache/apt-cacher-ng svendowideit/apt-cacher-ng
#a docker registry
docker run -d --network host --name registry --restart always registry
#a hub registry mirror
docker run -d --name mirror --network host -v /var/lib/registry-mirror:/registry -e STORAGE_PATH=/registry -e STANDALONE=false -e MIRROR_SOURCE=https:/registry-1.docker.io -e MIRROR_SOURCE_INDEX=https://index.docker.io registry
docker exec mirror sh -c "echo 'proxy:' >> /etc/docker/registry/config.yml"
docker exec mirror sh -c "echo '  remoteurl: https://registry-1.docker.io' >> /etc/docker/registry/config.yml"
docker exec mirror sh -c "sed -i~ 's/addr: :5000/addr: :5555/g' /etc/docker/registry/config.yml"
docker restart mirror
```
