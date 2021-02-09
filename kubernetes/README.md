# Kubernetes Alura
Aplicação de conteúdo estudado em cursos [Kubernetes: Pods, Services e ConfigMaps](https://cursos.alura.com.br/course/kubernetes-pods-services-configmap) e [Kubernetes: Deployments, Volumes e Escalabilidade](https://cursos.alura.com.br/course/kubernetes-deployments-volumes-escalabilidade) da Alura.

## kubectl
```bash
kubectl get nodes
kubectl get pods [--watch] [-o wide]
kubectl get svc
kubectl get configmap
kubectl get all

kubectl run <pod_name> --image=<image_name>[:<image_version>]

kubectl edit pod <pod_name> 

kubectl delete pod [<pod_name>] [--all]
kubectl delete svc [<svc_name>] [--all]
kubectl delete [-f <file_path>]
kubectl delete pods,services,configmaps --all

kubectl describe pod <pod_name>
kubectl describe svc <svc_name>
kubectl describe configmap <configmap_name>

kubectl apply [-f <file_path>]

kubectl exec -it <pod_name> -- <command>
```

## minikube
```bash
minikube start --vm-driver=virtualbox
``` 