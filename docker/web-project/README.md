### Comandos utilizados nesse exemplo
```bash
docker login
docker build -t thinog/node .
docker push thinog/node
docker run -d -p 3000:3000 thinog/node
```