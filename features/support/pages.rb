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
    element :sexo, 'select[name="gender"]'
    element :senha, '#password'
    element :confirmar_senha, '#confirmation'
    element :cep, '#zip'
    element :numero, '#street_3'
    element :telefone, "#telephone"
    element :celular, "#fax"
    element :btn_finalizar_cadastro, '.buttons-set button[type="submit"]'

    # def seleciona_sexo(sexo)
    #     .find('option', text: sexo).select_option
    
    
    # end

    def cadastro_cpf(cpf_cadastro)
        nome.set(Faker::Name.name)
        sobrenome.set(Faker::Name.last_name)
        email.set(Faker::Internet.email('teste'))
        cpf.set cpf_cadastro
        data_nascimento.set(Faker::Date.birthday(18, 65).strftime("%d/%m/%Y"))
       # sexo.seleciona_sexo()
        senha.set('123456')
        confirmar_senha.set('123456')
        cep.set("06120-120")
        numero.set(Faker::Number.number(4))
        telefone.set(Faker::Number.number(10))
        celular.set(Faker::Number.number(11))
        btn_finalizar_cadastro.click
    end
   



    def cadastro_email(email_cadastro)
        nome.set(Faker::Name.name)
        sobrenome.set(Faker::Name.last_name)
        email.set email_cadastro
        cpf.set(Faker::CPF.numeric)
        data_nascimento.set(Faker::Date.birthday(18, 65).strftime("%d/%m/%Y"))
       # sexo.seleciona_sexo()
        senha.set('123456')
        confirmar_senha.set('123456')
        cep.set("06120-120")
        numero.set(Faker::Number.number(4))
        telefone.set(Faker::Number.number(10))
        celular.set(Faker::Number.number(11))
        btn_finalizar_cadastro.click
    end


    
    def cadastrar ()
        nome.set(Faker::Name.name)
        sobrenome.set(Faker::Name.last_name)
        email.set(Faker::Internet.email('teste'))
        cpf.set(Faker::CPF.numeric)
        data_nascimento.set(Faker::Date.birthday(18, 65).strftime("%d/%m/%Y"))
       # sexo.seleciona_sexo()
        senha.set('123456')
        confirmar_senha.set('123456')
        cep.set("06120-120")
        numero.set(Faker::Number.number(4))
        telefone.set(Faker::Number.number(10))
        celular.set(Faker::Number.number(11))
        btn_finalizar_cadastro.click

    end     
end