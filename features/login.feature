#language: pt

Funcionalidade: Login
    Para eu possa anunciar meus veículos
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu email e senha

    Contexto: Form de login
        Dado que eu acessei a página de login

    @login_sucesso @smoke
    Cenario: Login do usuário

        Quando faço login com:
            | nome  | Contoso                   |
            | email | contoso@ninjahouse.com.br |
            | senha | 123456                    |
        Então sou autenticado com sucesso

    @falha1
    Esquema do Cenario: Tentar logar

        Quando faço login com:
            | email | <email> |
            | senha | <senha> |
        Então devo ver a seguinte mensagem de "<alerta>"

        Exemplos: 
            | email                     | senha  | alerta                        |
            | padre.kevedo@nokziste.org | 123456 | Usuário e/ou senha inválidos. |
            | eu@papito.io              | xyz123 | Usuário e/ou senha inválidos. |
            | eu@papito.com             |        | Senha não informada.          |
            |                           | 123456 | Email não informado.          |
            | teste#teste.com           | 123456 | Email inválido.               |      
