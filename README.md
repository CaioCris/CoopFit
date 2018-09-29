# CoopFit

## Documentação
Link com os documentos do projeto no [Google Drive](https://drive.google.com/drive/u/0/folders/1CmLRvC-Mxuq7qeCyCMahMdM28Nvqprg4) do nosso grupo.

Link com a [documentação pedida](https://docs.google.com/document/d/1j74vTa4bBLT9eirOzMKMi3ZybmzMpsb0di1Th75YMQ0/edit?usp=sharing) para a entrega de digital.

## Ambiente

### Test
Mapeamento feito com JPA, mostrando o tesde de como se cria o banco e de que as ingestão então funcionando.
Conferir a ingestão de dados no link do [banco h2](http://localhost:8080/h2-console).
É possivel ver o mapeamento dos serviço no [swagger local](http://localhost:8080/swagger-ui.html)

### Dev
Ambiente que está sendo usado dentro da aws, existe os dados mocados para fazer consultas e testes da API.
Essa é a vrsão final da nossa aplicação, com isso esse acaba sendo o ambiente de produção.
URL -> http://54.89.196.181:8080/ ou http://ec2-54-89-196-181.compute-1.amazonaws.com:8080
É possivel ver o mapeamento dos serviço no [swagger dev](http://54.89.196.181:8080/swagger-ui.html)

## Autenticação
Os ambientes são autenticados por JWT, por isso é necessario fazer o login, de padrão as bases tem o usuario Caio que é um mock que inicializa com a aplicação.

{
	"email":"caiohcris@gmail.com",
	"senha":"123456"
}

Depois é necessario ir no header e buscar pelo valor dentro de Authorization.

Exemplo de retorno:

Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjYWlvaGNyaXNAZ21haWwuY29tIiwiZXhwIjoxNTM4MTg4MTE0fQ.PkhnGdfByv6oanUQh6NAN7FC_S9oPNhLA3-rSQEdFj2GnRxN5SJ-pHmEeZd7DQRqRiicGB0Lqb-EUx7SlHw_yA

Qualquer duvida pode entrar em contato comigo pelo whatsapp 11-944757700


