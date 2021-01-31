# Docker Alura
Aplicação de conteúdo estudado em curso [Docker: Criando containers sem dor de cabeça](https://cursos.alura.com.br/course/docker-e-docker-compose) da Alura, e alguns conteúdos extra do Alura+.


# Comandos aplicados em curso
```bash
docker run \ # Run a container
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

docker ps [-a] [-q] # List docker processes
docker start [-a] [-i] <container_id> # Start a container
docker stop [-t <timeout_secs>] <container_id> # Stop a container
docker rm  [-f] <container_id> # Delete a container
docker container prune [-f] # Remove all unused containers
docker container ls [-a] [-s] # List containers
docker images # List local images
docker rmi # Delete a image
docker port <container_id> # Check port bindings of a container
docker inspect <container_id> # Inspect a container
docker build [-f <dockerfile_path>] [--no-cache] [-t <image_name>] <dir> # Build a dockerfile
docker login # Sign in docker hub
docker logout # Sign out docker hub
docker push <image_name> # Push a container to docker hub
docker pull <image_name> # Pull a container from docker hub
docker network create --driver bridge [--attachable] <network_alias> # Create a new docker network
docker network ls # List docker networks
docker network inspect <network_alias> # Inspect a docker network
docker exec [-it] <container_id> <command> # Execute commands inside a container
docker history <image_name> # Check layers of a image
docker volume ls # List docker volumes
docker volume inspect <volume_name> # Inspect a docker volume
docker volume rm <volume_name> # Delete a docker volume
docker volume create <volume_name> # Create a new docker volume

docker-compose build # Build services from a docker-compose file
docker-compose up [-d] # Run services from a docker-compose file
docker-compose ps # List active docker-compose containers
docker-compose down # Kill active docker-compose containers
docker-compose restart # Restart docker-compose containers
```

## Imagens utilizadas
hello-world
ubuntu
dockersamples/static-site
douglasq/alura-books:cap05
mongo