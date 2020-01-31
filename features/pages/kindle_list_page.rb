require "site_prism"


class KindleList < SitePrism::Page
    element :kindle_paperwhite, :xpath, "//*[text()='Kindle Paperwhite 8 Gb - Agora à prova d´água']"

    def kindle_model_click(modelo)
      if modelo == "Kindle Paperwhite 8 Gb - Agora à prova d´água"
        kindle_paperwhite.click
      end
    end
end
