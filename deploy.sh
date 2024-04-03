#!/bin/bash

# Função para fazer o build da aplicação
build_application() {
    echo "Iniciando o build da aplicação..."
    ng build --configuration production --base-href=/
    if [ $? -ne 0 ]; then
        echo "Erro ao fazer o build da aplicação."
        exit 1
    fi
    echo "Build da aplicação concluído com sucesso."
}

# Função para criar o arquivo CNAME
create_cname_file() {
    echo "Criando o arquivo CNAME..."
    echo 'tallyto.com.br' > dist/site-portifolio/browser/CNAME
    echo "Arquivo CNAME criado com sucesso."
}

# Função para fazer o deploy da aplicação
deploy_application() {
    echo "Fazendo o deploy da aplicação..."
    angular-cli-ghpages --dir=dist/site-portifolio/browser
    if [ $? -ne 0 ]; then
        echo "Erro ao fazer o deploy da aplicação."
        exit 1
    fi
    echo "Deploy da aplicação concluído com sucesso."
}

# Chamada das funções
build_application
create_cname_file
deploy_application

exit 0
