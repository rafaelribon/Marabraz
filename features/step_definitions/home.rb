Dado("que estou na Home da Marabraz") do
    visit "http://www.marabraz.com.br/nossaslojas/"
  end
  
  Quando("clico em Nossas Lojas") do
    @home.exibir_lojas
    sleep 10
  end
  
  Quando("clico em Central de Atendimento") do
    visit "https://secure.marabraz.com.br/sac/"
  end