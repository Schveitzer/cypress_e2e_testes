# Testes e2e para o sistema Serasa

O projeto inclui:

- Framworks:
  - Cypress
- Features:
  - Testes usando liguangem Gherkin com cucumber
  - Data driven testes
  - Page Object Pattern
  - Comandos customizados
  - Guia de estilos baseado na ES6
  - Relatórios com Allure (Print em caso de falha)

## Estrutura do Projeto

```
.
├── cypress
│   ├── fixtures
│   │   └── credenciais.json //Contém as credenciais que são usadas nos testes
│   ├── integration
│   │   ├── constants
│   │   │   └── MensagensSistema.constant.js // Contém as mensagens do sistema
│   │   ├── features
│   │   │   └── login
│   │   │       └── login.feature // Feature a ser testada
│   │   ├── pages
│   │   │   └── Login.page.js // Arquivo com o PageObject da página Login
│   │   └── steps
│   │       └── login.steps.js // Arquivo de steps que será consumida pelo arquivo de feature
│   ├── plugins
│   │   └── index.js
│   └── support
│       ├── commands.js // Contém os comandos personalizados
│       └── index.js
├── cypress.json
├── package.json
├── README.md
└── yarn.lock
```

## Requisitos

- node >= 12.18.x - [how to install Node](https://nodejs.org/en/download/)
- yarn >= 1.17.x - [how to install Yarn](https://yarnpkg.com/en/docs/install#debian-stable)

## Iniciando

Instalar as dependências:

```bash
$ yarn install
```

## Executando os testes:

Primeiro deve-se definir a variavél de ambiente que terá a url do sistema:

> O cypress identifica automaticamente as variáveis de ambiente que iniciam com CYPRESS\_\*

```bash
$ export CYPRESS_BASE_URL=https://www.serasa.com.br
```

Para executar os testes no google chorme de forma visual:

```bash
$ yarn test:chrome
```

Para executar os testes no google chrome no mode "headless":

```bash
$ yarn test:chrome:headless
```

## Relatório

Para gerar o relatório execute o comando:

> Você deve estar no diretório /projeto_testes

```bash
$ allure generate --clean cypress/results -o cypress/results/allure-report
```

Para abrir o relatório no navegador execute:

```bash
$ allure open cypress/results/allure-report
```

Relatório que foi gerado:

<a href="https://ibb.co/QDJvnGr"><img src="https://i.ibb.co/8Ymg2V6/screenshot-127-0-1-1-41433-2020-10-03-14-17-31.png" alt="screenshot-127-0-1-1-41433-2020-10-03-14-17-31" border="0"></a>
