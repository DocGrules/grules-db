Trabalho: Sistemas Distribuídos

Integrantes: Joao Vitor - Junior Gomes - Sebastiao Araujo - Tiago Oliveira

O Objetivo do trabalho prover um Serviço de Banco de dados usando postgresql em docker e executar Backup do mesmo em outro equipamento 

***Script para Ubuntu ***

o script grules-postgres.sh ira instalar o docker na máquina e iniciar o container do postgres expondo a porta 5432 e guardando os arquivos em /docker/postgres/data (Caso não exista, a mesma será criada)

************************

Caso já tenha o docker instalado, execute o docker-compose.yml para iniciar o banco.


O Banco foi executado utilizando linha de comando ou seja, sem o docker-compose. Para iniciar o container com o banco foi utilizado o seguinte comando:

docker container run -p 5432:5432 -v /docker/postgres/data:/var/lib/postgresql/data --name grules-db -d postgres

Este comando pode ser dividido em vários segmentos, cada parte do comando e essencial para o funcionamento do sistema como um todo.
Segue detalhadamente cada parte do comando

"docker" -> Indica no bash qual programa será executado.

"Container" -> Parâmetro do docker utilizado para indicar que o objeto a ser manipulado será um container, uma vez que a vários outros objetos a serem manipulados.

"rum" -> indica o que o container será criado e executado.

"-p 5432-5432" -> Parâmetro utilizado para disponibilizar a porta do container na placa de rede do Host, a ordem de passagem é: Porta do Host : Porta do Container. a alteração do número da porta não atrapalha a comunicação dos objetos desde que: Se a porta do host for alterada, a realização obrigatoriamente deverá chegar na porta informada no comando, se a porta do container for alterada, o serviço executado deverá estar escutando na porta informada. No nosso caso de uso foi mantida a porta padrão do serviço postgresql em ambos os casos

"-v /docker/postgres/data:/var/lib/postgresql/data" -> Este parâmetro tem o intuito de mapear volumes entre o container e o host, da mesma forma que no mapeamento das portas, primeiro e indicado o caminho da pasta no host, depois no container, esse parâmetro pode ter vários usos, no nosso caso, ele serviu para que todos os dados de persistência do banco ficassem gravados no caminho indicado do disco na máquina host.

"--name grules-bd" -> Parâmetro tem a função de dar nome ao container, quando um container e encerrado, o mesmo não se perde, mas apenas fica "Desligado", e pode ser iniciado sempre quando necessário, a criação de um nome para o container nao e obrigatória, porém e uma prática que facilita o gerenciamento do mesmo. 

"-d" -> O Parâmetro é utilizado para que o container rode em modo "silencioso", sempre que um container e iniciado ele irá mostrar os logs do container no terminal, com este parâmetro, o container iniciaram, no entanto o terminal ficará livre para uso.

"postgres" -> Por fim o parâmetro que indica qual imagem será utilizada para executar o container, da mesma forma que para criar uma máquina virtual você precisa de ter um imagem do sistema, para criar um container e preciso ter uma imagem  do serviço que será executado, muitos serviços famosos como apache, php, mysql, ou no nosso caso PostgreSQL tem uma imagem já pronta e disponibilizada no docker hub (Repositório oficial de imagens), desta forma, se na hora da execução do container a imagem já estiver disponível na sua máquina ela irá executar o container, se não estiver disponível a mesma será baixada do docker-hub automaticamente.
