#language:pt

Funcionalidade: Login

    @release  @logout
    Cenario: Login Valido 
        Dado que acesso o formulario de login 
        Quando faço o login  com  "rafael.ribon@fcamara.com.br" e "123456"
        Então serei autenticado 
    
    @release 
    Cenario: Senha Invalida 
        Dado que acesso o formulario de login 
        Quando faço o login  com  "rafael.ribon@fcamara.com.br" e "10203040"
        Então exibe a mensagem "Acesso ou senha inválida."

    @release 
    Cenario: Login Invalido 
        Dado que acesso o formulario de login 
       Quando faço o login  com  "rafael.ribon@io.com.br" e "123456"
        Então exibe a mensagem "Acesso ou senha inválida."


    #Cenario: Login Facebooks