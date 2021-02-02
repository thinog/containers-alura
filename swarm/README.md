# Docker Swarm Alura
Aplicação de conteúdo estudado em curso [Docker Swarm: Orquestrador de containers](https://cursos.alura.com.br/course/docker-swarm-cluster-container) da Alura.


## docker-machine
```bash
docker-machine ls # List active docker-machine VMs 
docker-machine create -d <vm_driver> <vm_name> # Create a new docker-machine VM
docker-machine start <vm_name> # Start a docker-machine VM
docker-machine stop <vm_name> # Stop a docker-machine VM
docker-machine ssh <vm_name> # Access a docker-machine VM by SSH
docker-machine rm <vm_name> # Delete a docker-machine VM
```

## docker
```bash
docker swarm init [--force-new-cluster] --advertise-addr <swarm_manager_ip> # Create a new docker swarm cluster
docker swarm join-token <node_type(worker|manager)> # Get the join token of a cluster
docker swarm join --token <join_token> <swarm_manager_ip>:<swarm_manager_port> # Join into a swarm cluster
docker swarm leave # Leave the current cluster

docker node ls [--format <format_settings>] # List cluster nodes. Runs only from a manage r node
docker node rm <node_name> # Delete a node from the cluster. Runs only from a manager node
docker node inspect <node_name> # Inspect a cluster node
docker node demote <node_name> # Demote a node to worker
docker node update \ # Update node settings 
    [--availability <node_new_availability (active|pause|drain)>] \
    [--role <node_new_role (manager|worker)>] \
    <node_name> 

docker service create \ # Run a service into the cluster
    [-p <host_port>:<container_port>] \
    [--mode <running_mode (replicated|global)>] \
    [--name <service_name>] \
    [--replicas <total_of_replicas>] \
    [--network <service_network>] \
    <image_name> 
    [<command>]
docker service ls # List active services
docker service ps <service_id> # Get details from a service
docker service rm <service_id> # Remove a service from the cluster
docker service update \ # Update service settings
    [--constraint-add <service_constraints>] \
    [--replicas <total_of_replicas>] \
    <service_id> 
docker service scale <service_id>=<total_of_replicas> # Scale the number of instances of a service

docker stack deploy --compose-file <compose_file_path> <stack_name> # Create a new stack of containers
docker stack ls # List all active stacks
docker stack rm <stack_rm> # Remove a stack
```