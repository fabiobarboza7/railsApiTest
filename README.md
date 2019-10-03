# Nome do projeto

## Descrição:
Developing a RoR RESTful API. Check it out in production!

GET https://rentbrella.herokuapp.com/api/v1/premises
GET https://rentbrella.herokuapp.com/api/v1//:premise_id/stations

POST https://rentbrella.herokuapp.com/api/v1/premises
POST https://rentbrella.herokuapp.com/api/v1/stations


## Iniciando

### Pré-requisitos

- Rails
- Docker
- Postman || Insomnia

### Rodando
```
Clone o repositório
Acesse o Docker

> docker-compose run --rm website bundle install
> docker-compose run --rm website bundle exec rake db:create
> docker-compose run --rm website bundle exec rake db:migrate

Subindo o servidor local:

> docker-compose up
```
### Testes

```
> docker-compose run --rm website bundle exec rspec
```

### Acessando a api
```
localhost:3000
```

### Rotas

```
Premises

GET  /api/v1/premises
POST /api/v1/premises

Stations

GET  /api/v1/premises/:premise_id/stations
POST /api/v1/stations

```

## Autor

* **Fábio Souza - fabiobarboza7@hotmail.com**

