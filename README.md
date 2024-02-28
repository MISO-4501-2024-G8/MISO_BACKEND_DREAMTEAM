# MISO_BACKEND_DREAMTEAM
Proyecto Backend de Proyecto Final 1 y Proyecto Final 2



## MS_Register-Login

### Descripción

Microservicio encargado de la gestión de usuarios, registro, login.

### Docker commands

```bash
 docker build -t ms_register_login .
 docker run -p 3000:3000 -d ms_register_login
```

Instalar AWS Cli
```bash
brew install awscli
aws --version
aws configure
```

Actualizar ECR

```bash
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u7g2q2l0
docker build -t ms_register_login .
docker tag ms_register_login:latest public.ecr.aws/u7g2q2l0/ms_register_login:latest
docker push public.ecr.aws/u7g2q2l0/ms_register_login:latest
```

Probar Imagen

```bash
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u7g2q2l0
docker pull public.ecr.aws/u7g2q2l0/ms_register_login:latest
docker run -p 3000:3000 -d public.ecr.aws/u7g2q2l0/ms_register_login:latest
```
