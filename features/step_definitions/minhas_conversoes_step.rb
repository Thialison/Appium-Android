Dado(/^que estou na tela principal$/) do
  @home = Home.new
  @home.tela_principal_aberta?
end

Quando(/^eu pressionar o ícone do menu$/) do
  @home.tocar_icone_menu
end

Quando(/^toco em minhas conversões$/) do
  @home.tocar_minhas_conversoes
end

Quando(/^crio uma nova conversão$/) do
  @conversao = Conversoes.new
  @conversao.criar_nova_conversao
end

Então(/^visualizo a minha nova conversão$/) do
  @conversao.valida_nova_conversao
end

Então(/^devo visualizar minhas conversões$/) do
  @conversao = Conversoes.new
  @conversao.visualiza_minhas_conversoes?
end