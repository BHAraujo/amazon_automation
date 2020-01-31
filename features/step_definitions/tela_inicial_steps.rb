Given("que esteja na tela inicial do site AMAZON BRASIL") do
  tela_inicial.load
end

When("pesquiso a palavra {string}") do |value|
  tela_inicial.input_search_send_keys(value)
end

And("clico no botao IR") do
  tela_inicial.button_go_click
end
