/// <reference types="Cypress" />

class LoginPage {
  get botaoEntrar() {
    return cy.contains("Entrar");
  }

  get botaoConfirmar() {
    return cy.get('[data-gtm-name="confirmar"]');
  }

  get campoCPF() {
    return cy.get("#cpf");
  }

  get campoSenha() {
    return cy.get("#password");
  }

  get mensagemContainer() {
    return cy.get("small");
  }
}

export const loginPage = new LoginPage();
