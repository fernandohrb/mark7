#language:pt
Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senhas
    Previamente cadastrados

        @login
        Cenário: Usuário deve ser autorizado

        Dado que eu acesso a página principal
        Quando eu faço o login com "fernandohrb@gmail.com" e "$Change01"
        Então devo ser autenticado com sucesso
        Então devo ver a seguite mensagem "Olá, Fernando Henrique Rocha Brito" 
	
        @login
	Cenário: Senha errada
	
        Dado que eu acesso a página principal
        Quando eu faço o login com "fernandohrb@gmail.com" e "xpto0123"
        Então devo ver a seguite mensagem "Senha inválida."
	
        @login
	Cenário: Usuário não existe
	
        Dado que eu acesso a página principal
        Quando eu faço o login com "eu@papito.net" e "xpto0123"
        Então devo ver a seguite mensagem "Usuário não cadastrado."
	
        @login
	Cenário: Email incorreto
	
        Dado que eu acesso a página principal
        Quando eu faço o login com "fernandohrb.net" e "xpto123"
        Então devo ver a seguite mensagem "Email incorreto ou ausente."
	
