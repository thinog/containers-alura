# Docker Alura
Aplicação de conteúdo estudado em curso [Docker: Criando containers sem dor de cabeça](https://cursos.alura.com.br/course/docker-e-docker-compose) da Alura.


# Comandos aplicados em curso
```bash
docker run \
    [-it] \ # attach to container
    [-d] \ # detach
    [-P] \ # map ports randomly
    [-p <port_host>:<port_container>] \ # map ports
    [--name <custom_name>] \ # custom container name
    [-e <env_var_name>=<env_var_value>] \ # env vars
    [-v <volume_dir_container>] \ # mount volume (host dir random)
    [-v <volume_dir_host>:<volume_dir_container>] \ # mount volume
    [-w <working_dir>] \ # set working dir
    <image>[:<image_version>] \ # image name
    [<command>] # command to execute in the container

docker ps [-a] [-q]
docker start [-a] [-i] <container_id>
docker stop [-t <timeout_secs>] <container_id>
docker rm <container_id>
docker container prune
docker images
docker rmi
docker port <container_id>
docker inspect <container_id>
docker build [-f <dockerfile_path>] [--no-cache] [-t <image_name>] <dir>
docker login
docker logout
docker push <image_name>
docker pull <image_name>
```

## Imagens utilizadas
hello-world
ubuntu
dockersamples/static-site