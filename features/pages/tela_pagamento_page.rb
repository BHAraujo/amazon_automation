require "site_prism"


class TelaPagamento < SitePrism::Page

  element :radio_boleto, "#pm_boletos"
  element :button_continue, "#continue-top"


  def radio_boleto_click
    radio_boleto.click
  end

  def button_continue_click
    button_continue.click
  end
end
