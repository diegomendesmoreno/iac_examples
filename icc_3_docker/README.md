# Projeto Docker com2 containers MySQL e NGINX interagindo na mesma rede

## Pré-requisitos

- [Instalando Docker no Ubuntu](https://docs.docker.com/engine/install/ubuntu/)


## Clonando o repositório e subindo os containers
```
git clone https://github.com/diegomendesmoreno/iac_examples.git

cd iac_examples/icc_3_docker


bash docker_mysql.sh


# Após o download das imagens, a subida dos 2 containers, pode acessar o MySQL pelo Host (usando o IPAddress dado no log)
mysql -h [IPAddress] -u root --port=3306

# ou entre no container do NGINX
sudo docker exec -it nginx_ws bash

# e de dentro do container acesse o MySQL
mysql -h [IPAddress] -u root --port=3306
```

## Observações

- `IPAddress` será dado como OUTPUT no terminal ao final do script docker_mysql.sh
