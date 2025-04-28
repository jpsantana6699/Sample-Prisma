# Usar uma imagem base do Node.js
FROM node:18

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos package.json e package-lock.json
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante do código para o container
COPY . .

# Compilar o TypeScript
RUN npm run build

# Expor a porta da aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "dist/index.js"]