# Docker Swarm Alura
Aplicação de conteúdo estudado em curso [Docker Swarm: Orquestrador de containers](https://cursos.alura.com.br/course/docker-swarm-cluster-container) da Alura.


### Docker Machine
```bash
docker-machine ls # List active docker-machine VMs 
docker-machine create -d <vm_driver> <vm_name> # Create a new docker-machine VM
docker-machine start <vm_name> # Start a docker-machine VM
docker-machine ssh <vm_name> # Access a docker-machine VM by SSH
```

### Docker Swarm
```bash
docker swarm init --advertise-addr <swarm_manager_ip> # Create a new docker swarm cluster
docker swarm join-token <node_type(worker|manager)> # Get the join token of a cluster
docker swarm join --token <join_token> <swarm_manager_ip>:<swarm_manager_port> # Join into a swarm cluster
docker node ls # List cluster nodes. Runs only from a manager node
docker swarm leave # Leave the current cluster
docker node rm <node_name> # Delete a node from the cluster. Runs only from a manager node
docker node inspect <node_name> # Inspect a cluster node
docker service create [-p <host_port>:<container_port>] <image_name> # Run a service into the cluster
docker service ls # List active services
docker service ps <service_id> # Get details from a service
docker service rm <service_id> # Remove a service from the cluster
```