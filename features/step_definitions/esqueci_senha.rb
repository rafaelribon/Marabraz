
  

  Dado('que estou no formulario de esqueceu a senha') do
    visit "https://secure.marabraz.com.br/customer/account/forgotpassword/" 
  end
  
  Quando('eu preencho o campo com {string}') do |email|
    @esqueci_senha.enviar_senha(email)
  end
  
  Então('deve exibir a mensagem {string}') do |mensagem_alerta|
    expect(page).to have_content mensagem_alerta 
  end