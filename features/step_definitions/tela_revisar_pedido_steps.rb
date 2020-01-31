Then("o endereco de entrega deve ser") do |table|

  table.hashes[0].keys.each do |keys|
    case keys
    when "Nome_completo"
      expect(tela_revisar_pedido.name_text_value).to eq(table.hashes[0][:Nome_completo])
    when "Endereço"
      expect(tela_revisar_pedido.street_text_value).to eq(table.hashes[0][:Endereço])
    when "Complemento_Bairro"
      expect(tela_revisar_pedido.complent_text_value).to eq(table.hashes[0][:Complemento_Bairro])
    when "Cidade_Estado"
      expect(tela_revisar_pedido.city_state_text_value).to eq(table.hashes[0][:Cidade_Estado])
    when "CEP"
      expect(tela_revisar_pedido.cep_text_value).to eq(table.hashes[0][:CEP])
    when "Telefone"
      expect(tela_revisar_pedido.phone_number_text_value.include?(table.hashes[0][:Telefone])).to eq(true)
    else
      raise "Invalid"
    end
  end
end


Then("valido as seguintes informaçoes do Kindle") do |table|
  sleep(5)

  table.hashes[0].keys.each do |keys|
     case keys
     when "Titulo"
       expect(tela_revisar_pedido.kindle_title_text).to eq(@kindle_model)
     when "Preço"
       expect(tela_revisar_pedido.kindle_price_text).to eq(@kindle_price)
     when "Status"
       expect(tela_revisar_pedido.kindle_status_text).to eq(@kindle_status)
     when "Quantidade"
       expect(tela_revisar_pedido.kindle_amount_text).to eq(@kindle_amount)
     else
       raise "Invalid"
     end
  end
end

Then("opçao de entrega deve ser a padrao") do
  expect(page.find("div.a-radio:nth-child(3) > input:nth-child(1)")[:checked]).to eq("true")
end

Then("calculo o valor total da compra") do
  @total_order = @kindle_price + 4.90
  @format_total_order = '%.2f' % @total_order
end

And("clico no botao CONFIRMAR PEDIDO") do
  tela_revisar_pedido.confirm_order_click
end

Then("o boleto deve ser gerado") do
  expect(page.title).to eq("A Amazon.com.br agradece")
end

Then("valido o valor impresso no boleto") do
  tela_revisar_pedido.price_boleto_text
end
