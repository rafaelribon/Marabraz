#language:pt


    Funcionalidade: Alteração do Cadastro 

        Cenario:  Atualizar Cadastro 
            Dado que estou na tela de Informações de Conta 
            Quando eu atualizar os dados cadastrais 
            Então deve apresentar a mensagem "As informações da conta foram salvas."


        Cenario: Email ja Cadastro 
            Dado que estou na tela de Informações de Conta 
            Quando eu atualizar email para um ja cadastrado
            Então deve apresentar a mensagem ""

        Cenario: CPF ja Cadastrado
            Dado que estou na tela de Informações de Conta 
            Quando eu atualizar para um CPF já cadastrado 
            Então deve apresentar a mensagem ""

        Cenario: Atualizar a Senha 
            Dado que estou na tela de Informações de Conta 
            Quando eu atualizar a senha 
            Então deve apresentar a mensagem 

        Cenario: Senha atual invalida 
            Dado que estou na tela de Informações de Conta 
            Quando eu atualizar a senha passando a senha atual errrada 
            Então deve apresentar a mensagem ""

        Cenario: Senha Diferentes 
            Dado que estou na tela de Informações de Conta 
            Quando eu atualizar a senha passando a nova senha diferente da confirmar nova senha 
            Então deve apresentar a mensagem ""