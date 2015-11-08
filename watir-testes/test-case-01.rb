require 'watir'
require 'watir-webdriver'

b = Watir::Browser.new

p "Abrindo browser..."
print "Browser aberto no site da RoboCore..." if b.goto 'http://robocore.net'
p "[OK]"

print "Selecionando a opção de Login"
b.element(:id=>'login_link').click
p "[OK]"

print "Preenchendo os dados do usuário"
b.text_field(:class=>'rcform2').set 'zarathon'
b.text_field(:class=>'rcform2', :type=>"password").set '336661'
p "[OK]"
print "Clicando no botão Login"
b.button(:class=>'botao btn_med').click
p "[OK]"

print "Voltando para a página inicial..."
b.link(:text=>"LOJA VIRTUAL").click
p "[OK]"

print "Selecionando a caixa de texto e efetuando a busca..."
b.text_field(:id =>'acSearch').set 'Relé'
f = b.form(:name => "busca")
f.submit
p "[OK]"

print "Escolhendo o item Relé..."
b.div(:class=>'main_body').lis[2].click
p "[OK]"

print "Adicionando o produto ao carrinho..."
b.button(:class=>"shopping_cart botao").click
p "[OK]"

print "Clicar no botão escolher pagamento"
b.link(:class=>"botao btn_big btn_yellow").click
p "[OK]"

print "Escolher Boleto bancário e clicar em Finalizar Compra"
b.button(:name=>'submitbutton').click
p "[OK]"

print "Fechando o browser em 10 segundos..."
sleep(10)
b.quit
p "[OK]"
