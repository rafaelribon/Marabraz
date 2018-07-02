#language:pt

Funcionalidade: Cadastro de PF 
	@cadastro
	Cenario: Cadastrar um Usuario
        Dado que estou na tela de Identificação 
		Quando clico em Criar uma Conta 
		E  preencho o formulario 
		Então o cadastro sera realizado 
		
		
	# Cenario: Cadastar um Usario via Facebook 
    #     Dado acesso o formulario de cadastro 
	# 	Quando clico em Login
	# 	E clico em Conectar com Facebook
	# 	E preencho os dados 
	# 	Então o cadastro sera realizado 
		
		
	Cenario: Email ja cadastrado 
		Dado que já possui um cadastro com esse email 
		Quando realizo um novo cadastrado utilizando esse email 
		Então deve exibir a mensagem 
		
	
	Cenario: CPF já cadastrado 
        Dado que já possui um cadastro com esse CPF 
		Quando realizo um novo cadastrado utilizando esse CPF 
		Então deve exibir a mensagem 