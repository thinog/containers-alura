# Kubernetes Alura
Aplicação de conteúdo estudado em cursos [Kubernetes: Pods, Services e ConfigMaps](https://cursos.alura.com.br/course/kubernetes-pods-services-configmap) e [Kubernetes: Deployments, Volumes e Escalabilidade](https://cursos.alura.com.br/course/kubernetes-deployments-volumes-escalabilidade) da Alura.

## kubectl
```bash
kubectl get nodes
kubectl get pods [--watch]

kubectl run <pod_name> --image=<image_name>[:<image_version>]

kubectl describe pod <pod_name>
```

## minikube
```bash
minikube start --vm-driver=virtualbox
``` 