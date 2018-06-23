clear 

echo "****************************************"
echo "***********Instalando docker************"
echo "****************************************"

sleep 5s

apt-get install curl -y 

curl -sSL https://get.docker.com | sh

cd / && mkdir docker && cd docker && mkdir postgres && cd postgres && mkdir data && cd /

docker container run --name grules-db -d -p 5432:5432 -v /docker/postgres/data:/var/lib/postgresql/data postgres

clear

echo "****************************************"
echo "*********Instalação Finalizada**********"
echo "****************************************"

sleep 5s
