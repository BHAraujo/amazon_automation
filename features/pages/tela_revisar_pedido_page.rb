require "site_prism"


class TelaRevisarPedido < SitePrism::Page

    element :name_text, "li.displayAddressLI:nth-child(1)"
    element :street_text, "li.displayAddressLI:nth-child(2)"
    element :complemnt_text, "li.displayAddressLI:nth-child(3)"
    element :city_state_text, "li.displayAddressLI:nth-child(4)"
    element :cep_text, "li.displayAddressLI:nth-child(5)"
    element :phone_number_text, "li.displayAddressLI:nth-child(6)"

    element :kindle_title, ".asin-title"
    element :kindle_price, "span.a-color-price:nth-child(1) > strong:nth-child(1)"
    element :kindle_status, ".availability"
    element :kindle_amount, ".quantity-display"
    element :option_delevery, "div.a-radio:nth-child(3) > input:nth-child(1)"
    element :price_delivery, "tr.small-line-height:nth-child(2) > td:nth-child(2)"
    element :confirm_order, ".place-your-order-button"
    element :price_order_site, "td.a-size-medium:nth-child(2) > strong:nth-child(1)"
    element :price_boleto, ".a-padding-mini > div:nth-child(5) > div:nth-child(2)"

    def price_boleto_text
      price_boleto.text.to_i
    end

    def confirm_order_click
      confirm_order.click
    end

    def price_delivery_text
      price_delivery.text.gsub("R$", "").to_i
    end

    def kindle_title_text
      kindle_title.text
    end

    def kindle_price_text
      kindle_price.text.gsub("R$", "").to_i
    end

    def kindle_status_text
      kindle_status.text
    end

    def kindle_amount_text
      kindle_amount.text
    end

    def name_text_value
      name_text.text
    end

    def street_text_value
      street_text.text
    end

    def complent_text_value
      complemnt_text.text
    end

    def city_state_text_value
      city_state_text.text
    end

    def cep_text_value
      cep_text.text
    end

    def phone_number_text_value
      phone_number_text.text
    end

end
