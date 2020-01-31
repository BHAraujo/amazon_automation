And("cadastro um novo endereço de envio") do |table|

  if page.has_selector?('div.a-declarative > span:nth-child(1) > a:nth-child(1)')
    page.find("div.a-declarative > span:nth-child(1) > a:nth-child(1)").click
    sleep(2)
  end

  table.hashes[0].keys.each do |keys|
      case keys
      when "Nome_completo"
        @name = table.hashes[0][:Nome_completo]
        tela_endereco.input_name_send_keys(table.hashes[0][:Nome_completo])
      when "Numero_telefone"
        @phone_number = "Telefone: (11)7070-7070"
        tela_endereco.input_phone_send_keys(table.hashes[0][:Numero_telefone])
      when "CEP"
        @cep = table.hashes[0][:CEP]
        tela_endereco.input_cep_send_keys(table.hashes[0][:CEP])
        tela_endereco.button_validate_cep_click
      when "Numero"
        sleep 1.5
        @number = table.hashes[0][:Numero]
        tela_endereco.input_number_send_keys(table.hashes[0][:Numero])
      when "Complemento"
        @complent = table.hashes[0][:Complemento]
        tela_endereco.input_complement_send_keys(table.hashes[0][:Complemento])
      when "Bairro"

        tela_endereco.input_bairro_send_keys(table.hashes[0][:Bairro])
      else
        raise "Invalid parameter"
      end
  end
end

And("clico no botao CONTINUAR") do
  page.execute_script "window.scrollTo(100,600)"
  page.execute_script "window.scrollTo(100,600)"
  tela_endereco.button_send_for_address_click
end
