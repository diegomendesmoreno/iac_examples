# Projeto Kubernetes (minikube) com 2 containers MySQL e NGINX interagindo na mesma rede

## Pré-requisitos

- [Instalando minikube no Ubuntu](https://minikube.sigs.k8s.io/docs/start/)
- [Instalando kubectl no Ubuntu](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)


## Procedimento
```
# Clonando o Repositório
git clone https://github.com/diegomendesmoreno/iac_examples.git

cd iac_examples/icc_4_kubernetes


# Iniciando o cluster
minikube start

# Finalmente subindo e configurando os containers
bash kubernetes_up.sh

# Após a subida e configuração dos 2 containers, siga as orientações do script para acessar o MySQL a partir do container do NGINX:
mysql -h [CLUSTER-IP] -u root -proot --port=3306
```

## Observações

- `CLUSTER-IP` será dado como OUTPUT no terminal ao final do script kubernetes_up.sh
- Você pode abrir um segundo terminal e rodar `minikube dashboard` para ver um dashboard em tempo real
- Após a aplicação é recomendado rodar `bash kill_all.sh`, `minikube stop` e `minikube delete` para terminar todos os processos
