Dado("que estou na tela de Identificação") do
    visit "https://secure.marabraz.com.br/customer/account/login/"
end
  
Quando("clico em Criar uma Conta") do
  visit "https://secure.marabraz.com.br/customer/account/create/"
 
end
  
Quando("preencho o formulario") do
  @cadastro.cadastrar()
end
  
Quando("realizo um novo cadastrado utilizando o email {string}") do |email_cadastro|
  @cadastro.cadastro_email(email_cadastro)
end

Quando("realizo um novo cadastrado utilizando esse CPF {string}") do |cpf_cadastro|
  @cadastro.cadastro_cpf(cpf_cadastro)
end


Então("deve apresentar a mensagem {string}") do |mensagem_alerta|
  expect(page).to have_content mensagem_alerta 
end