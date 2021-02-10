# Kubernetes Alura
Aplicação de conteúdo estudado em cursos [Kubernetes: Pods, Services e ConfigMaps](https://cursos.alura.com.br/course/kubernetes-pods-services-configmap) e [Kubernetes: Deployments, Volumes e Escalabilidade](https://cursos.alura.com.br/course/kubernetes-deployments-volumes-escalabilidade) da Alura.

## kubectl
```bash
kubectl get nodes
kubectl get pods [--watch] [-o wide]
kubectl get svc
kubectl get all
kubectl get configmaps
kubectl get replicasets
kubectl get deployments
kubectl get pv
kubectl get pvc

kubectl run <pod_name> --image=<image_name>[:<image_version>]

kubectl edit pod <pod_name> 

kubectl delete pod [<pod_name>] [--all]
kubectl delete svc [<svc_name>] [--all]
kubectl delete [-f <file_path>]
kubectl delete deployments,replicasets,pods,services,configmaps --all
kubectl delete replicasets [<rs_name>] [--all]
kubectl delete deployment [<deployment_name>] [--all]
kubectl delete pv [<persistente_volume_name>] [--all]
kubectl delete pvc [<persistent_volume_claim_name>] [--all]

kubectl describe pod <pod_name>
kubectl describe svc <svc_name>
kubectl describe configmap <configmap_name>
kubectl describe replicasets rs_name>
kubectl describe deployment <deployment_name>
kubectl describe pv <persistente_volume_name>
kubectl describe pvc <persistent_volume_claim_name>

kubectl apply [-f <file_path>] [--record]

kubectl exec -it <pod_name> [--container <container_name>] -- <command>

kubectl rollout history deployment <deployment_name>

kubectl rollout undo deployment <deployment_name> --to-revision=<revision_number>

kubectl annotate deployment <deployment_name> kubernetes.io/change-cause="<change_message>"
```

## minikube
```bash
minikube start --vm-driver=virtualbox
minikube ssh
``` 