# Sample Prisma ORM API

Este projeto é um exemplo de API utilizando Express, TypeScript, Prisma e MongoDB. Ele foi configurado para ser uma base pronta para produção.

## Tecnologias Utilizadas

- **Express**: Framework para criação de APIs.
- **TypeScript**: Superset do JavaScript que adiciona tipagem estática.
- **Prisma**: ORM para interação com o banco de dados MongoDB.
- **ESLint**: Ferramenta para análise de código e padronização.

## Estrutura do Projeto

```
project-root/
├── package.json
├── tsconfig.json
├── prisma/
│   └── schema.prisma
├── src/
│   └── index.ts
```

- **package.json**: Gerenciamento de dependências e scripts.
- **tsconfig.json**: Configuração do TypeScript.
- **prisma/schema.prisma**: Definição do schema do banco de dados.
- **src/index.ts**: Arquivo principal da API.

## Configuração do Banco de Dados

1. Configure a variável de ambiente `DATABASE_URL` no arquivo `.env` para apontar para o seu banco de dados MongoDB.
   ```env
   DATABASE_URL="mongodb+srv://<usuario>:<senha>@<cluster>.mongodb.net/<database>?retryWrites=true&w=majority"
   ```

2. Execute o comando para sincronizar o schema com o banco de dados:
   ```bash
   npx prisma db push
   ```

## Scripts Disponíveis

- **Iniciar o servidor**:
  ```bash
  npx ts-node src/index.ts
  ```

- **Gerar o cliente Prisma**:
  ```bash
  npx prisma generate
  ```

- **Sincronizar o schema com o banco de dados**:
  ```bash
  npx prisma db push
  ```

## Rotas Disponíveis

- **GET /users**: Retorna uma lista de usuários.

## Como Executar

1. Instale as dependências:
   ```bash
   npm install
   ```

2. Configure o arquivo `.env` com a URL do banco de dados.

3. Inicie o servidor:
   ```bash
   npx ts-node src/index.ts
   ```

4. Acesse a API em `http://localhost:3000`.

## Executando com Docker

Este projeto inclui suporte para Docker e Docker Compose. Siga as instruções abaixo para executar a aplicação em containers.

### Pré-requisitos

- Docker instalado: [Instruções de instalação](https://docs.docker.com/get-docker/)
- Docker Compose instalado: [Instruções de instalação](https://docs.docker.com/compose/install/)

### Passos para executar

1. Construa e inicie os containers:
   ```bash
   docker-compose up --build
   ```

2. Acesse a aplicação em `http://localhost:3000`.

### Serviços no Docker Compose

- **app**: Contém a aplicação Node.js.
- **mongo**: Banco de dados MongoDB.

### Volumes

- **mongo-data**: Armazena os dados persistentes do MongoDB.

## Contribuição

Sinta-se à vontade para abrir issues ou enviar pull requests para melhorias neste projeto.