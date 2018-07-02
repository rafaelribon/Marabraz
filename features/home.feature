#language:pt


Funcionalidade: Home

    @home
    Cenario: Nossas Lojas 
        Dado que estou na Home da Marabraz 
        Quando clico em Nossas Lojas 
        Então deve exibir a mensagem "ENCONTRE UMA DE NOSSAS LOJAS"

    
    @home
    Cenario: Centrar de Atendimento 
        Dado que estou na Home da Marabraz 
        Quando clico em Central de Atendimento
        Então deve exibir a mensagem "BEM VINDO AO ATENDIMENTO MARABRAZ. ESCOLHA ABAIXO O CANAL PARA FALAR CONOSCO DE ACORDO COM O LOCAL DA COMPRA:"

    
   
    Cenario: CPF com Pedido 
        Dado que estou na Home da Marabraz  
        Quando preencho cpf com pedido na Status da Entrega 
        Então deve me apresentar os pedidos 

    
    
    Cenario: CPF sem Pedido
        Dado que estou na Home da Marabraz 
        Quando preencho com CPF sem pedido no Status da Entrega 
        Então deve exibir a mensagem "PEDIDO NÃO ENCONTRADO"

    
    
    Cenario: Pedido Valido 
        Dado que estou na Home da Marabraz 
        Quando preencho com CPF sem pedido no Status da Entrega 
        Então deve exibir a mensagem "PEDIDO NÃO ENCONTRADO"

    
    Cenario: Pedido Inexistente 
        Dado que estou na Home da Marabraz 
        Quando preencho com CPF sem pedido no Status da Entrega 
        Então deve exibir a mensagem "PEDIDO NÃO ENCONTRADO"