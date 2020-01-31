And("devo ser redirecionado para forma de pagamento") do |text|
  expect(text).to eq(page.title)
end

And("seleciono a forma de pagamento via boleto") do
  tela_pagamento.radio_boleto_click
  expect(page.find("#pm_boletos")[:checked]).to eq("true")
end

Then("clico no botao CONTINUAR para revisar o pedido") do
  tela_pagamento.button_continue_click
end
