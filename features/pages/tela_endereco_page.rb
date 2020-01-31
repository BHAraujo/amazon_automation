require "site_prism"


class TelaEndereco < SitePrism::Page


  element :input_name, "#enterAddressFullName"
  element :input_phone, "#enterAddressPhoneNumber"
  element :input_cep, "#enterAddressPostalCode"
  element :button_validate_cep, "#enterAddressAutoPopulateTrigger"
  element :message_validation_cep, "#enterAddressPostalCodeInvalidError"
  element :input_number, "#enterAddressBuildingNumber"
  element :input_complement, "#enterAddressComplement"
  element :button_send_for_address,  "div.enter-address-form:nth-child(1) > form:nth-child(3) > div:nth-child(7) > span:nth-child(1) > span:nth-child(1) > input:nth-child(1)"
  element :input_bairro, "#enterAddressNeighborhood"

  def input_name_send_keys(name)
      input_name.send_keys name
  end

  def input_phone_send_keys(phone)
      input_phone.send_keys phone
  end

  def input_cep_send_keys(cep)
      input_cep.send_keys cep
  end

  def input_number_send_keys(number)
    input_number.send_keys number
  end

  def input_complement_send_keys(complement)
      input_complement.send_keys complement
  end

  def button_validate_cep_click
    button_validate_cep.click
  end

  def message_validation_cep_text
    message_validation_cep.text
  end

  def input_bairro_send_keys(bairro)
    input_bairro.send_keys bairro
  end

  def button_send_for_address_click
    button_send_for_address.click
  end

end
