Dado('que acesso o formulario de login') do
    visit "https://secure.marabraz.com.br/customer/account/login/" 
  end
  
  Quando('faço o login  com  {string} e {string}') do |email, senha|
    @login_page.logar(email,senha)

  end
  
  Então('serei autenticado') do
    expect(page).to have_content 'Olá'
  end
  
  Então('exibe a mensagem {string}') do |mensagem_alerta|
    expect(page).to have_content mensagem_alerta 
  end