# Docker Alura
Aplicação de conteúdo estudado em curso [Docker: Criando containers sem dor de cabeça](https://cursos.alura.com.br/course/docker-e-docker-compose) da Alura, e alguns conteúdos extra do Alura+.


# Comandos aplicados em curso
```bash
docker run \
    [-it] \ # attach to container
    [-d] \ # detach
    [-P] \ # map ports randomly
    [-p <port_host>:<port_container>] \ # map ports
    [--name <custom_name>] \ # custom container name
    [-e <env_var_name>=<env_var_value>] \ # env vars
    [-v <volume_dir_container>] \ # mount volume (create a random volume) - see --mount flag
    [-v <volume_dir_host>:<dir_container>] \ # mount volume (bind mount)
    [-v <volume_name>:<dir_container>] \ # mount volume (existing volume)
    [--tmpfs <dir_container>] # volatile volume (stored in the host RAM)
    [-w <working_dir>] \ # set working dir
    [--network <network_alias>] \ # set a network to the container
    <image>[:<image_version>] \ # image name
    [<command>] # command to execute in the container

docker ps [-a] [-q]
docker start [-a] [-i] <container_id>
docker stop [-t <timeout_secs>] <container_id>
docker rm <container_id>
docker container prune [-f]
docker container ls [-a] [-s]
docker images
docker rmi
docker port <container_id>
docker inspect <container_id>
docker build [-f <dockerfile_path>] [--no-cache] [-t <image_name>] <dir>
docker login
docker logout
docker push <image_name>
docker pull <image_name>
docker network create --driver bridge <network_alias>
docker network ls
docker network inspect <network_alias>
docker exec [-it] <container_id> <command>
docker history <image_name>
docker volume ls
docker volume inspect <volume_name>
docker volume rm <volume_name>
docker volume create <volume_name>

docker-compose build
docker-compose up [-d]
docker-compose ps
docker-compose down
docker-compose restart
```

## Imagens utilizadas
hello-world
ubuntu
dockersamples/static-site
douglasq/alura-books:cap05
mongo