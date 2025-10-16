# Usa a imagem leve do Nginx
FROM nginx:stable-alpine

# Remove configurações padrão do Nginx
RUN rm -rf /etc/nginx/conf.d/*

# Copia todos os arquivos da pasta atual (dist) para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Copia o arquivo de configuração customizado do Nginx (um nível acima)
COPY ../nginx.conf /etc/nginx/conf.d/default.conf

# Expõe a porta padrão do Nginx
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]
