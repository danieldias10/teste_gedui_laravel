# Projeto

Seja bem vindo ao projeto de Teste GEDUI (Call Flex)

## 1 - Requisitos

  - PHP 7.4 
  - LARAVEL 8
  - PASSPORT AUTHENTICATION

## 2 - Instalação

###  2.1 - Dependências
Instalação das dependências do projeto.

```sh
$ composer install
```

###  2.2 - Variáveis de Ambiente

Copiar arquivo .env.example para .env local na raiz do projeto

```sh
$ cp .env.example .env
```

###  2.3 - Migrations ou Banco de dados

Na raiz do projeto existe um banco de dados (teste_gedui.sql) apenas para facilitar. Também é possivel utilizar as migrations:

```sh
$ php artisan migrate
```

###  2.4 - Inicialização

Inicializa o sistema 
```sh
$ php artisan serve
```
