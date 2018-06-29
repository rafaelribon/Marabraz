#language:pt

Funcionalidade: Esqueceu Senha 
    
    # @release @login
    # Cenario: Esqueci Minha Senha 
    #     Dado que acesso o formulario de login 
    #     Quando clico em Esqueci Minha Senha 
    #     Então deve exibir a tela  de Recuperação de Senha 

    @release 
    Cenario: Email Cadastro 
        Dado que estou no formulario de esqueceu a senha 
        Quando eu preencho o campo com 'rafael.ribon@fcamara.com.br'
        Então deve exibir a mensagem "Se houver uma conta associada a rafael.ribon@fcamara.com.br você receberá um email com um link para reconfigurar a sua senha"
        

    @release 
    Cenario: Email Não Cadastrado 
        Dado que estou no formulario de esqueceu a senha 
        Quando eu preencho o campo com "teste@ioteste.com.br"
        Então deve exibir a mensagem "Se houver uma conta associada a teste@ioteste.com.br você receberá um email com um link para reconfigurar a sua senha"


    