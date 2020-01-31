module Helper

    def tirar_foto(nome_cenario, status)
      foto = "reports/screenshots/%s/#{nome_cenario}_%s.png" % [CONFIG["browser"], CONFIG["browser"]]
      page.save_screenshot(foto)
      embed(foto, "Clique Aqui")
    end
end
