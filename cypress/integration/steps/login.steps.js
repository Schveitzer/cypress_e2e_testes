import { When, Given, And, Then } from "cypress-cucumber-preprocessor/steps";
import { loginPage } from "../pages/Login.page.js";
import * as mensagensSistema from "../constants/MensagensSistema.constant";

Given(/^que eu estou na paǵina inicial$/, () => {
  if (cy.url() != Cypress.env("BASE_URL")) {
    cy.visit("/");
  }
});

And(/^eu visualizo o botão Entrar$/, () => {
  loginPage.botaoEntrar.should("be.visible");
});

When(/^eu clico no botão Entrar$/, () => {
  loginPage.botaoEntrar.click();
});

When(/^eu clico no botão Confirmar$/, () => {
  loginPage.botaoConfirmar.click();
});

When(/^eu preencho o campo cpf com o cpf do usuário '(.+)'$/, (usuario) => {
  cy.getCpfUsuario(usuario).then((cpf) => {
    loginPage.campoCPF.type(cpf);
  });
});

Then(/^eu visualizo o campo CPF$/, () => {
  loginPage.campoCPF.should("be.visible");
});

Then(
  /^o sistema exibe mensagem informando que o campo cpf deve ser preenchido$/,
  () => {
    loginPage.mensagemContainer.should(
      "to.have.text",
      mensagensSistema.CPF_NAO_PREENCHIDO
    );
  }
);

Then(/^o sistema exibe mensagem informando que o campo cpf é inválido$/, () => {
  loginPage.mensagemContainer.should(
    "to.have.text",
    mensagensSistema.CPF_IVALIDO
  );
});

Then(/^o sistema exibe a página para informar a senha$/, (mensagem) => {
  loginPage.campoSenha.should("be.visible");
});
