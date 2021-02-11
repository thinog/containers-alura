# Kubernetes Alura
Aplicação de conteúdo estudado em cursos [Kubernetes: Pods, Services e ConfigMaps](https://cursos.alura.com.br/course/kubernetes-pods-services-configmap) e [Kubernetes: Deployments, Volumes e Escalabilidade](https://cursos.alura.com.br/course/kubernetes-deployments-volumes-escalabilidade) da Alura.

## kubectl
```bash
kubectl get <resource_type> [<resource_name>] [--watch] [-o wide]
kubectl get all

kubectl run <pod_name> --image=<image_name>[:<image_version>]

kubectl edit pod <pod_name> 

kubectl delete <resource_type> [<resource_name>] [--all]
kubectl delete <resource_type_list_comma_separated> --all

kubectl describe <resource_type> <resource_name>

kubectl apply [-f <yaml_file_path>] [--record]

kubectl exec -it <pod_name> [--container <container_name>] -- <command>

kubectl rollout history deployment <deployment_name>

kubectl rollout undo deployment <deployment_name> --to-revision=<revision_number>

kubectl annotate deployment <deployment_name> kubernetes.io/change-cause="<change_message>"
```

## minikube
```bash
minikube start --vm-driver=virtualbox
minikube ssh
minikube addons list
minikube addons enable <addon_name>
```

#### Kubernetes Resource types:
- nodes
- pods
- svc
- configmaps
- replicasets
- deployments
- pv
- pvc
- hpa
- statefulsets