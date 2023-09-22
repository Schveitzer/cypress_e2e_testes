# End-to-End Testing with Cypress and Cucumber

he project includes:

- Frameworks:
  - Cypress
- Features:
  - Tests using Gherkin language with Cucumber
  - Test execution with Docker
  - Data-driven tests
  - Page Object Pattern
  - Custom commands
  - Style guide based on ES6
  - Reports with Allure (Screenshots in case of failure)

## Contents

- [Project Structure](#Project-Structure)
- [Requirements](#Requirements)
- [Getting Started](#Getting-Started)
- [Running the Tests](#Running-the-Tests)
- [Report](#Report)
- [Running with Docker](#Running-with-Docker)

## Project Structure

```
.
├── cypress
│   ├── fixtures
│   │   └── credentials.json // Contains credentials used in tests
│   ├── integration
│   │   ├── constants
│   │   │   └── SystemMessages.constant.js // Contains system messages
│   │   ├── features
│   │   │   └── login
│   │   │       └── login.feature // Feature to be tested
│   │   ├── pages
│   │   │   └── Login.page.js // Page Object file for the Login page
│   │   └── steps
│   │       └── login.steps.js // Steps file consumed by the feature file
│   ├── plugins
│   │   └── index.js
│   └── support
│       ├── commands.js // Contains custom commands
│       └── index.js
├── cypress.json
├── package.json
├── README.md
└── yarn.lock

```

## Requirements

- node >= 12.18.x - [How to install Node](https://nodejs.org/en/download/)
- yarn >= 1.17.x - [How to install Yarn](https://yarnpkg.com/en/docs/install#debian-stable)
- Docker (Optional) >= 18.09 - [How to install Docker](https://docs.docker.com/get-docker/)

## Getting Started

Install dependencies:

```bash
$ yarn install
```

## Running the Tests:

First, you need to set the environment variable with the system's URL:

> Cypress automatically recognizes environment variables that start with CYPRESS_*

```bash
$ export CYPRESS_BASE_URL=https://www.serasa.com.br
```

To execute the tests in Google Chrome visually::

```bash
$ yarn test:chrome
```

To execute the tests in headless mode in Google Chrome:

```bash
$ yarn test:chrome:headless
```

## Report

To generate the report, run the following command:

> You must be in the /testes_e2e_cypress directory

```bash
$ yarn report:generate
```

To open the report in the browser, execute:

```bash
$ yarn report:open
```

Here is an example of the generated report:

<a href="https://ibb.co/QDJvnGr"><img src="https://i.ibb.co/8Ymg2V6/screenshot-127-0-1-1-41433-2020-10-03-14-17-31.png" alt="screenshot-127-0-1-1-41433-2020-10-03-14-17-31" border="0"></a>

## Running with Docker

To execute the tests using Docker:

```bash
$ export CYPRESS_BASE_URL=https://www.serasa.com.br
```

Build the Docker image:

```bash
$ make -i build
```

Run the tests:

```bash
$ make test.run
```

## Report

Copy the report files:

```bash
$ make report.get
```

View the report:

> You must be in the /testes_e2e_cypress directory
> 
```bash
$ yarn report:generate
```

To open the report in the browser, execute:

```bash
$ yarn report:open
```
