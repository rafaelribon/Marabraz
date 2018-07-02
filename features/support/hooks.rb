Before  do
    # Instacia  a  LoginPage 
        @login_page = LoginPage.new
        @nav = NavBar.new
        @esqueci_senha = EsqueciSenha.new
        @home = Home.new
        @cadastro = Cadastro.new

end 

Before('@login') do 
    @login_page.load
    @login_page.logar('rafael.ribon@fcamara.com.br', '123456')
end


After('@logout') do
    @nav.logout.click
end


After  do |scenario|
    nome_cenario = scenario.name.tr(' ','_').downcase!   
    evidencia = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(evidencia, full: true)
    embed(evidencia,'image/png','Clique aqui para ver a evidencia!')
end 