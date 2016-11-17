Primeiro é necessário instalar a ultima versão do ServiceDesk Plus em um container.
Iniciar docker para container service desk: 

docker run -it --name servicedesk -p 80:80/tcp -p 8081:8081/tcp -d --restart=always servicedesk /docker-entrypoint.sh