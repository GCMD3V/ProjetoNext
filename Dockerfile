# Use a imagem oficial do Node.js como base
FROM node:18

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia os arquivos do projeto para dentro do contêiner
COPY . .


# Exponha a porta onde a aplicação vai rodar (caso queira rodar um servidor)
EXPOSE 3000

# Comando para rodar a aplicação Node.js ou interagir com o terminal
CMD [ "node" ]

#docker build -t node-container .
#docker run -it node-container /bin/bash
#docker run -it -p 3000:3000 -v C:\Desenvolvimento\ProjetoNext:/usr/src/app node-container /bin/bash

#-v: Essa opção é usada para montar um volume ou mapear um diretório entre o host (sua máquina local) e o contêiner. Ela garante que alterações feitas no diretório dentro do contêiner também sejam refletidas na sua máquina local, e vice-versa.
