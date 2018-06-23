Trabalho: Sistemas Distribuidos

Integrantes: Joao Vitor - Junior Gomes - Sebastiao Araujo - Tiago Oliveria

O Objetivo do trabalho prover um Serviço de Banco de dados usando postgresql em docker e executar Backup do mesmo em outro equipamento 

***Script para Ubuntu ***

o script grules-postgres.sh ira instalar o docker na maquina e iniciar o container do postgres expondo a porta 5432 e guardando os arquivos em /docker/postgres/data (Caso nao exista, a mesma sera criada)

************************

Caso ja tenha o docker instalado, execute o docker-compose.yml para iniciar o banco.