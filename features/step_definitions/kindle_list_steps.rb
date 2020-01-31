And("seleciono o modelo {string}") do |modelo|
  if page.source.include?(modelo)
    kindle_list.kindle_model_click(modelo)
  end
end
