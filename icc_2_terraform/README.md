# Projeto Terraform de uma Virtual Machine no Azure Cloud com MySQL instalado

## Pré-requisitos

- [Instalando Terraform no Ubuntu](https://www.terraform.io/docs/cli/install/apt.html)
- [Instalando Azure CLI no Ubuntu](https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli-linux?pivots=apt)
- [Criando uma conta no Azure e fazendo o login no Azure CLI](https://learn.hashicorp.com/tutorials/terraform/azure-build#prerequisites)


## Clonando o repositório e rodando o projeto no Terraform
```
git clone https://github.com/diegomendesmoreno/iac_examples.git

cd iac_examples


terraform init

terraform apply -var 'admin_username=usuario' -var 'admin_password=Senh@do4zure'


# Espera pelo IP, e usa para o acesso ao banco de dados
mysql -h [IP_PUBLICO] -u usuario -p --port=3306
```
E colocar `Senh@do4zure` como password.

## Observações

- `IP_PUBLICO` será dado como OUTPUT do Terraform ao final do `terraform apply`
- `usuario` e a senha `Senh@do4zure` estão setados no arquivo terraform.tfvars
