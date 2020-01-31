#language: en

  Feature: Efetuar comprar no site automation practise
        Eu como usuário que realizar de um Kindle no site AMAZON BRASIL

        Background: Preparação de ambiente
          Given que esteja na tela inicial do site AMAZON BRASIL

        @amazon
        Scenario: Realizar comprar
          When o titulo da pagina deve ser
          """
          Amazon.com.br | Compre livros, informática, Tvs, Casa & Cozinha, Kindle, Echo e Fire TV
          """
          When pesquiso a palavra "Kindle"
          And clico no botao IR
          Then devo ser redirecionado para lista de Kindle disponiveis
          """
          Kindle na Amazon.com.br
          """
          And seleciono o modelo "Kindle Paperwhite 8 Gb - Agora à prova d´água"
          Then devo ser redirecionado para tela de compra do produto
          """
          Kindle Paperwhite 8 Gb - Agora à prova dŽágua: Amazon.com.br: Loja Kindle
          """
          Then o status do produto deve ser "Em estoque."
          And seleciono Capacidade de armazenamento digital 32G
          Then o nome do produto deve ser atualizado para
          """
          Kindle Paperwhite 32 Gb - Agora à prova d´água
          """
          Then valido a descricao do produto
          """
          - O mais leve e fino Kindle Paperwhite já lançado. Com a tela antirreflexo de 300 ppi,
            você pode ler como se fosse em papel, mesmo sob a luz do sol.
          - Agora à prova d’água: você fica livre para ler e relaxar na praia, na piscina ou na banheira.
          - Aproveite o dobro de espaço de armazenamento com 8 GB; ou escolha o modelo de 32 GB para
           armazenar eBooks como nunca. Armazenamento destinado a conteúdo e sistema operacional.
          """
          And quantidade dever igual a "1"
          And clico no botao COMPRAR AGORA
          Then devo ser redirecionado para tela de login
          | email                           | password    |
          | testautomationfcamara@gmail.com | Fcamara2020 |
          Then cadastro um novo endereço de envio
          | Nome_completo | Numero_telefone | CEP       | Numero | Complemento |
          | Fcamara       | (11)7070-7070   | 01415-906 | 986    |    Prédio   |
          And clico no botao CONTINUAR
          And devo ser redirecionado para forma de pagamento
          """
          Selecione um método de pagamento - Checkout da Amazon.com
          """
          And seleciono a forma de pagamento via boleto
          And clico no botao CONTINUAR para revisar o pedido
          Then o endereco de entrega deve ser
          | Nome_completo | Endereço                | Complemento_Bairro | Cidade_Estado  | CEP      | Telefone     |
          | Fcamara       | Rua Bela Cintra 986 986 | Prédio Consolação  | São Paulo - SP | 01415906 | (11)7070-7070 |
          Then valido as seguintes informaçoes do Kindle
          | Titulo                                        | Preço   | Status     | Quantidade  |
          | Kindle Paperwhite 32 Gb - Agora à prova dŽágua| $Preço  | Em estoque | $Quantidade |
          Then opçao de entrega deve ser a padrao
          Then calculo o valor total da compra
          And clico no botao CONFIRMAR PEDIDO
          Then o boleto deve ser gerado
          
