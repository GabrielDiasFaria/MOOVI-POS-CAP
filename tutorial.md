# Verificações Iniciais
node --version
npm --version

npm install -g @sap/cds-dk
cds --version


# Setup Inicial
cds init catalogo-filmes
cd catalogo-filmes
cds add nodejs
npm install

# Implementação
1- Criação do: db/schema.cds
2- Criação do: srv/service.cds
3- Iniciar OData: cds watch

# Implementar Banco Fisico
1- Vincular banco fisico: 
"cds": {
    "requires": {
        "db": {
        "kind": "sqlite",
        "credentials": {
            "url": "catalogo.db"
        }
        }
    }
}
2- Criar o banco: cds deploy


# App Fiori Elements
Abrir o Fiori Elements