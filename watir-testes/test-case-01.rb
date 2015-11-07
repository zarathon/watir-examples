require 'watir'
require 'watir-webdriver'

b = Watir::Browser.new

p "Abrindo browser"
p "Browser aberto no site da RoboCore" if b.goto 'http://robocore.net'

p "Selecionando a opção de Login"
b.element(:id=>'login_link').click

p "Preenchendo os dados do usuário"
b.text_field(:class=>'rcform2').set 'zarathon'
b.text_field(:class=>'rcform2', :type=>"password").set '336661'
p "Clicando no botão Login"
b.button(:class=>'botao btn_med').click

p "Voltando para a página inicial..."
b.link(:text=>"LOJA VIRTUAL").click

p "Selecionando a caixa de texto e efetuando a busca"
b.text_field(:id =>'acSearch').set 'Relé'
f = b.form(:name => "busca")
f.submit

p "Escolhendo o item Relé"
b.div(:class=>'main_body').lis[2].click

p "Adicionando o produto ao carrinho"
b.button(:class=>"shopping_cart botao").click



sleep(10)
b.quit
