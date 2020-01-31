require "site_prism"


class TelaInicial < SitePrism::Page

    set_url  ""

    element :input_search, "#twotabsearchtextbox"
    element :button_go, ".nav-search-submit > input:nth-child(2)"

    def input_search_send_keys(value)
      input_search.send_keys value

    end

    def button_go_click
      input_search.send_keys:return
    end
end
