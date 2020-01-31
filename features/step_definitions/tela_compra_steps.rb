Dir[File.join(File.dirname(__FILE__), "support/messages.rb")].each {|files| require files }


Then("devo ser redirecionado para tela de compra do produto") do |text|
  expect(page.title).to eq(text)
end

And("seleciono Capacidade de armazenamento digital 32G") do
  tela_compra.storage_thirty_two_click
  sleep(1.5)
  @kindle_model = "Kindle Paperwhite 32 Gb - Agora à prova dŽágua"
  sleep(1.5)
  @kindle_price = tela_compra.price_product_text
  @save_store = "32G"
end

Then("o nome do produto deve ser atualizado para") do |text|
  sleep(3)
  expect(text).to eq(tela_compra.name_product_text)
end


Then("o status do produto deve ser {string}") do |status|
  @kindle_status = status
  expect(status).to eq(tela_compra.status_product_text)
end

Then("valido a descricao do produto") do |text|
  expect(page.source.include?(KINDLE_PAPERWHITE_DESCRIPTION[0])).to eq(true)
  expect(page.source.include?(KINDLE_PAPERWHITE_DESCRIPTION[1])).to eq(true)
  expect(page.source.include?(KINDLE_PAPERWHITE_DESCRIPTION[2])).to eq(true)
end

Then("clico no botao COMPRAR AGORA") do
  tela_compra.button_buy_now_click
end

And("quantidade dever igual a {string}") do |qttd|
  @kindle_amount = qttd
  expect(tela_compra.amount_text).to eq(qttd.to_i)
end
