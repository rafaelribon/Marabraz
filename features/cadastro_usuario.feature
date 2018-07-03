#language:pt

Funcionalidade: Cadastro de PF 
	@cadastro @logout
	Cenario: Cadastrar um Usuario
        Dado que estou na tela de Identificação 
		Quando clico em Criar uma Conta 
		E  preencho o formulario 
		Então deve apresentar a mensagem "Obrigado por se registrar com Marabraz."
		
		
	# Cenario: Cadastar um Usario via Facebook 
    #     Dado acesso o formulario de cadastro 
	# 	Quando clico em Login
	# 	E clico em Conectar com Facebook
	# 	E preencho os dados 
	# 	Então o cadastro sera realizado 
		
	@cadastro 
	Cenario: Email ja cadastrado 
		Dado que estou na tela de Identificação 
		Quando clico em Criar uma Conta 
		E realizo um novo cadastrado utilizando o email 'rafael.ribon@fcamara.com.br'
		Então deve exibir a mensagem "Já existe uma conta com este endereço de email."
		
	@gerar
	Cenario: CPF já cadastrado 
		Dado que estou na tela de Identificação 
		Quando clico em Criar uma Conta 
        E realizo um novo cadastrado utilizando esse CPF "868.059.940-98"
		Então deve exibir a mensagem "TEste"