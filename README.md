# docker_toolkit

```
docker build -f Dockerfile -t toolkit . # size 206MB
docker run --rm -it toolkit:latest
kubectl -n default run toolkit --rm -it --image=toolkit:latest
```
