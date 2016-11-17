
Construir imagem:
docker build -t unifi .


Iniciar container:
docker run -it --name unifi -p 8443:8443 -p 8880:8880 -p 6789:6789 -p 8090:8080 -p 3478:3478/udp -p 10001:10001/udp -d --restart=always unifi