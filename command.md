# Deploy github pages

### Instalar o github pages cli
```bash
npm i -g angular-cli-ghpages
```

### Fazer o build da aplicação
```bash
ng build --configuration production --base-href=/site-portifolio/
```

### Fazer o deploy da aplicação
```bash
angular-cli-ghpages --dir=dist/site-portifolio/browser
```

# Deploy github pages com custom domain


### Instalar o github pages cli
```bash
npm i -g angular-cli-ghpages
```


### Fazer o build da aplicação
```bash
ng build --configuration production --base-href=/
```

### Criar um arquivo CNAME dentro da pasta do build
```bash
echo 'tallyto.com.br' > dist/site-portifolio/browser/CNAME
```


### Fazer o deploy da aplicação
```bash
angular-cli-ghpages --dir=dist/site-portifolio/browser
```



