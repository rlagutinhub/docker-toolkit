# Docker ToolKit

```
docker build -f Dockerfile -t toolkit .
docker run --rm -it --name toolkit toolkit:latest
kubectl -n default run toolkit --rm -it --image=toolkit:latest
```
