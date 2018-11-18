

# Automação do ZERO

## Turma 1808 de Agosto

#Executando com relatório
* cucumber -t @smoke --format html --out=log/reports.html


#Comandos uteis docker
Parar um container
docker stop 'id do container'  sem aspas

#Renomear container
docker rename 'id_do_container'  novo_nome

#Acessar o container
docker exec -i -t jenkins sh

#Pegando a chave no arquivo comando "cat"
cat /var/jenkins_home/secrets/initialAdminPassword

#Criando novo container para a maquina dos testes com o selenium 
docker run -d -p 4444:4444 -p 59000:59000 selenium/standalone-chrome-debug

#Executando testes do ci
* cucumber -t @smoke -p ci

----------------------------------------------
#Subir o Jenkins local
On Windows
Open up a command prompt window.

Download the jenkinsci/blueocean image and run it as a container in Docker using the following docker run command:

docker run ^
  -u root ^
  --rm ^
  -d ^
  -p 8080:8080 ^
  -p 50000:50000 ^
  -v jenkins-data:/var/jenkins_home ^
  -v /var/run/docker.sock:/var/run/docker.sock ^
  jenkinsci/blueocean
----------------------------------------------

#Acessar o docker do jenkins pelo terminal
docker exec -i -t jenkins sh


Aula jenkins completa.