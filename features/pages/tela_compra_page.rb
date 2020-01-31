require "site_prism"


class TelaCompra < SitePrism::Page

  elements :storage_thirty_two, "#a-autoid-10-announce > div > div"
  element :name_product, "#productTitle"
  element :price_product, "#priceblock_ourprice"
  element :kindle_cover, "#abb-option-B079GH742Z > span:nth-child(1) > div:nth-child(1) > label:nth-child(1) > span:nth-child(3)"
  element :kindle_cover_price, "#abb-option-B079GH742Z > span:nth-child(1) > div:nth-child(1) > label:nth-child(1) > span:nth-child(3) > span:nth-child(3)"
  element :status_product, "#availability"
  element :button_buy_now, "#buy-now-button"
  element :amount, "#quantity"
  element :cover_price, "#abb-option-B079GH742Z > span:nth-child(1) > div:nth-child(1) > label:nth-child(1) > span:nth-child(3) > span:nth-child(3)"


  def storage_thirty_two_click
    storage_thirty_two[0].click
  end

  def name_product_text
    name_product.text
  end

  def price_product_text
    price_product.text.gsub("R$", "").to_i
  end

  def kindle_cover_click
    kindle_cover.click
  end

  def kindle_cover_price_text
    kindle_cover_price.text.gsub("R$", "").to_i
  end

  def status_product_text
    status_product.text
  end

  def button_buy_now_click
    button_buy_now.click
  end

  def amount_text
    amount.text.to_i
  end
end
