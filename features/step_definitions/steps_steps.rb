And("o titulo da pagina deve ser") do |text|
  expect(page.title).to eq(text)
end

And("devo ser redirecionado para lista de Kindle disponiveis") do |text|
  sleep(4)
  expect(page.title).to eq(text)
end
