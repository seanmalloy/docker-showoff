### Dockerfile For Showoff

Install rubygem showoff in CentOS 7. The
project page for showoff is https://github.com/puppetlabs/showoff.

Docker image available at https://registry.hub.docker.com/u/seanmalloy/showoff/

#### Run Container
```
$ docker run -d -p 9090:9090 -h showoff --name showoff -v ~/showoff-example:/srv/showoff seanmalloy/showoff
```
