Dir[File.join(File.dirname(__FILE__), "pages/*_pages.rb")].each {|files| require files }


module PageObject

  def create_account
    @create_account ||= CreateAccount.new
  end

  def tela_inicial
    @tela_inicial ||= TelaInicial.new
  end

  def tela_login
    @tela_login ||= TelaLogin.new
  end

  def account_manage
    @account_manage ||= AccountManage.new
  end

  def kindle_list
    @kindle_list ||= KindleList.new
  end

  def tela_compra
    @tela_compra ||= TelaCompra.new
  end

  def tela_revisar_pedido
    @tela_revisar_pedido ||= TelaRevisarPedido.new
  end

  def tela_endereco
    @tela_endereco ||= TelaEndereco.new
  end

  def shipping
      @shipping ||= Shipping.new
  end

  def tela_pagamento
      @tela_pagamento ||= TelaPagamento.new
  end
end
