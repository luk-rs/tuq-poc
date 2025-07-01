# Base image
FROM node:18-bullseye

# Workdir
WORKDIR /usr/src/app

# Instala ferramentas de sistema
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
  && rm -rf /var/lib/apt/lists/*

# Copia manifestos e instala dependências
COPY package.json package-lock.json ./
RUN npm ci

# Copia restante do código
COPY . .

# Expõe porta de desenvolvimento
EXPOSE 4500

# Comando default para dev
CMD ["npm", "run", "dev"]
