class LoginPage < SitePrism::Page
    element :campo_email, '#email'
    element :campo_senha, '#pass'
    element :botao_entrar, 'button[id*=send2]'

# Defino  o metodo 
    def logar (email,senha)
        campo_email.set email
        campo_senha.set senha
        botao_entrar.click
    end

end


class NavBar < SitePrism::Page
    element :logout, 'a[title="Sair"]'
    
end



class EsqueciSenha < SitePrism::Page
    element :esqueci_email, '#email_address'
    element :enviar, 'button[title="Enviar"]'
    #element :botao_senha, 'a[href="https://secure.marabraz.com.br/customer/account/forgotpassword/"]'


    def enviar_senha (email)
        esqueci_email.set email
        enviar.click
    end

end 


class Home <SitePrism::Page
    element :lojas, '.nossas-lojas'
    # element :central_antendimento, '.central-atendimento a[href="/sac/"]'
    


    def exibir_lojas()
        lojas.click
    end


    # def atendimento()
    #     central_antendimento.click_link
    # end

end 

class Cadastro <SitePrism::Page
    element :email, '#email_address'
    element :cpf, '#taxvat'
    element :nome, '#firstname'
    element :sobrenome, '#lastname'
    element :data_nascimento, '#dob'
    #element :sexo
    element :senha, '#password'
    element :confirmar_senha, '#confirmation'
    element :cep, '#zip'

    def cadastrar ()
        nome.set(Faker::Name.name)
        sobrenome.set(Faker::Name.last_name)
        email.set(Faker::Internet.email('teste'))
        cpf.set(Faker::CPF.numeric)
        puts data = Faker::Date.birthday(18, 65)
        #data_nascimento.set(Faker::Date.between_except(20.year.ago, 1.year.from_now, Date.today))
        

        

        

    end 
        
end



    