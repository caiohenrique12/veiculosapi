# API de veículos

Esse repositório apresenta código de uma api de veiculos.

## Dependências do projeto

* Ruby 2.6.0
* Rails 6
* Pg

## Como rodar?

1. Faça o clone desse projeto:
```bash
git clone
```
2. No diretório do projeto:
```bash
cd 
```
3. Rode o bundle para instalar as gems:
```bash
bundle
```
ou
```bash
bundle install
```
4. Crie o banco de dados, migração e seed:
```bash
rails db:create db:migrate db:seed
```
5. Rodando o projeto:
```bash
rails s
```
6. No navegador acesse:
```
http://localhost:3000/api/v1/veiculos
```

## Testes

1. Para rodar os testes:
```bash
rspec spec/
```

## Endpoints

Os *endpoints* desta API estão documentados abaixo.

---------------
## Listar todos os veículos

**URL**
/veiculos

**Método HTTP:**

* GET

**Parâmetros de URL:**

* Nenhum


**Respostas**

Código: 200
Conteúdo de retorno: JSON com veiculos



---------------
#### Listar um veículo específico

**URL**

* /contacts/:id

**Método HTTP:**

* GET

**Parâmetros de URL:**

* **id(inteiro)**: id do veiculo a ser exibido.

**Respostas**

Código: 200
Conteúdo de retorno: JSON com veiculo

Código: 404 Não encontrado
Motivo: Não existe tal código.

---------------
#### Armazenar um veículo
**URL**

* /veiculos

**Método HTTP:**

* POST

**Parâmetros**

* Dados do **Veículo**:

```json
  {
    "marca": "Yamaha",
    "veiculo": "MT03",
    "ano": 2020,
    "descricao": "300 cc",
    "vendido": true
  }
```

**Respostas**

Código: 200
Conteúdo de retorno: JSON com o veículo salvo.

---------------
#### Atualizar um veículo

**URL**

* /veiculos/:id

**Método HTTP:**

* PUT

**Parâmetros da URL**

* **id(inteiro)**: id do veículo a ser alterado/atualizado.
*
**Parâmetros no *body* da requisição**

* Dados alterados/atualizados:

```json
  {
    "marca": "Yamaha",
    "ano": 2019
  }
```

**Respostas**

Código: 200
Conteúdo de retorno: JSON com o veículo salvo.

---------------
#### Remover um veículo

**URL**

* /veiculos/:id

**Método HTTP:**

* DELETE

*Parâmetros de URL:**

* **id(inteiro)**: id do veículo a ser excluído.

**Respostas**

Código: 204
Conteúdo de retorno: Nenhum. A operação ocorreu com sucesso.

Código: 404 Não encontrado