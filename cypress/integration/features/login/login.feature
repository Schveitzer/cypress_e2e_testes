#language: pt

Funcionalidade: Validações no login na página inicial

    Contexto:
        Dado que eu estou na paǵina inicial
            E eu visualizo o botão Entrar

    Cenário: Sistema exibe mensagem informando que o campo cpf deve ser preenchido
        Quando eu clico no botão Entrar
        Então eu visualizo o campo CPF
        Quando eu clico no botão Confirmar
        Então o sistema exibe mensagem informando que o campo cpf deve ser preenchido

    Cenário: Sistema exibe mensagem informando que o cpf informado é inválido
        Quando eu clico no botão Entrar
        Então eu visualizo o campo CPF
        Quando eu preencho o campo cpf com o cpf do usuário 'Usuário Inválido'
            E eu clico no botão Confirmar
        Então o sistema exibe mensagem informando que o campo cpf é inválido

    Cenário: Sistema exibe página para informar a senha quando o cpf é válido
        Quando eu clico no botão Entrar
        Então eu visualizo o campo CPF
        Quando eu preencho o campo cpf com o cpf do usuário 'Usuário 1'
            E eu clico no botão Confirmar
        Então o sistema exibe a página para informar a senha

    Cenário: Este vai falhar, é apenas para demonstrar como fica o erro no relatório
        Quando eu clico no botão Entrar
        Então eu visualizo o campo CPF
        Quando eu clico no botão Confirmar
        Então o sistema exibe mensagem informando que o campo cpf é inválido