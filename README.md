# Trabalho DevOps
Trabalho DevOps - Pós Cloud Computing SETREM

Professor: Alexandre Mioranza

Acadêmicos: Cassiano Mônego e Cristhian Gassen

### Pipeline

Build > Test > Publish > Deploy

### Ferramentas utilizadas:

- Github: Source Code Management
- Travis CI: Build e Test
- DockerHub: Publish
- Heroku: Deploy

### Configuração/Execução do Pipeline

A primeira tarefa na configuração do Pipeline, foi realizar a integração entre as ferramentas utilizadas no projeto, através do uso de APIs. No Github, foi permitido que o Travis CI tivesse acesso ao repositório do projeto, para que fosse possível rodar os processos de CI/CD. O Travis CI foi configurado para iniciar um Build toda vez que identificar que um "Push" foi realizado no repositório do projeto. As APIs do Heroku e do DockerHub também foram configuradas no Travis CI, para que nas fases de Publish e Deploy fosse possível acessar ambas as ferramentas e realizar os procedimentos necessários.

A aplicação foi desenvolvida utilizando a linguagem Python + Flask, para apresentar ao usuário uma página web contendo informações sobre o projeto. Durante o Pipeline, o processo de Test foi realizado utilizando a biblioteca Unittest, que é nativa do Python.

O arquivo travis.yml contem a configuração do Pipeline executado pelo Travis CI. O arquivo Dockerfile possuí a configuração do container que irá rodar a aplicação. Para realizar o Publish da aplicação, o Travis CI aciona o script deploy_dockerhub.sh que cria a imagem da aplicação e a armazena em forma de container no DockerHub. O Deploy é feito no Heroku através de APIs, utilizando as configurações pré-definidas no arquivo travis.yml

### Escolha das Ferramentas Utilizadas

Todas as ferramentas utilizadas para o desenvolvimento e execução deste Pipeline rodam no formato SaaS, e possuem níveis de acesso Free para testes, desde que os projetos sejam Open Source. O principal motivo de termos optado pela utilização do Travis CI, foi a capacidade de integração com as demais ferramentas utilizadas no projeto e sua ampla documentação. O DockerHub foi utilizado como Registry do container de nossa aplicação e o Heroku foi escolhido para deploy, pela agilidade e facilidade de lançar APPs.

### Ferramentas Alternativas

Alternativas ao Github:

- GitLab
- BitBucket
- Subversion

Alternativas ao Travis CI:

- Jenkins
- GitLab
- Go

Alternativas ao Heroku:

- Azure
- AWS
- GCP

### Links

- Container DockerHub: https://hub.docker.com/r/cmonego/devops/

  - Tag: latest

- APP Heroku: https://app-devops-setrem.herokuapp.com/
