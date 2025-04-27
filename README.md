# Docker ToolKit

```yaml
docker build -f Dockerfile -t toolkit . # size ~200MB
docker run --rm -it --name toolkit toolkit:latest
kubectl -n default run toolkit --rm -it --image=toolkit:latest
```
