# AWS EC2 Instance

Teremos um output que será o IP utilizado para acesso a VM, pensado para acesso ssh com: 

#### Gerar chave de acesso ssh:
```bash
  ssh-keygen -f aws-key
```

#### Acessar EC2
```bash
  ssh -i aws-key ubuntu@ip
```
