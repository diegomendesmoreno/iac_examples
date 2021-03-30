# Script Vagrant de instalação de um MySQL na porta 3306
No host, com mysql instalado, rodar:
```
mysql -h [IP_PUBLICO] -u usuario -p --port=3306
```
E colocar `Senh@do4zure` como password.

## Observações

- `IP_PUBLICO` será dado como OUTPUT do Terraform ao final do `terraform apply`
- `usuario` e a senha `Senh@do4zure` estão setados no arquivo terraform.tfvars