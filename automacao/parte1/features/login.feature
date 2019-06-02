#language:pt
Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu e-mail e senha previamente cadastrados.

    @temp    
    Cenário: Usuário deve ser autenticado

        Dado que eu acesso a página principal
        E acesso a tela de login
        Quando eu faço login com "testeclauautomacao@mailinator.com" e "Teste123"
        Então devo ver a seguinte mensagem "Login efetuado com sucesso!"
        E deve exibir no dashboard a frase "Seja-bem vindo(a) ao Doutor Direto"

    Cenário: Senha errada

        Dado que eu acesso a página principal
        E acesso a tela de login
        Quando eu faço login com "testeclauautomacao@mailinator.com" e "teste123"
        Então devo ver a seguinte mensagem "Email ou senha inválida."

    Cenário: Usuário não existe

        Dado que eu acesso a página principal
        E acesso a tela de login
        Quando eu faço login com "claudia321@mailinator.com" e "Teste123"
        Então devo ver a seguinte mensagem "Email ou senha inválida."

    Cenário: E-mail incorreto

        Dado que eu acesso a página principal
        E acesso a tela de login
        Quando eu faço login com "claudiamailinator.com" e "Teste123"
        Então devo ver a seguinte mensagem "Please include an '@' in the email address. '' is missing an '@'."