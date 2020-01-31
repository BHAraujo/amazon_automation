
***Automation Practice***

**Descrição**
- Automação E-commerce do site www.automationpractice.com utilizando Ruby, Capybara, Selenium, Site Prism, Rspec e Cucumber.

**Configuração de ambiente**
  - Instalar o Ruby 2.4 >=, link: https://rubyinstaller.org/downloads/ ;
  - Instalar a gem bundler, comando: `gem install bundler`
  - Para instalar a gems utilizadas no projeto que estão descritas no arquivo "Gemfile.rb", comando: `bundle install`
  - Fazer o download do webdriver Firefox compatível com a versão do browser, link https://github.com/mozilla/geckodriver/releases ;
  - Setar o webdriver como variável de ambiente do seu sistema operacional.

**Executar o projeto**
  - Arquivo cucumber.yml
      default: -p bdd -p html_report -c
         - -p bdd --> `Exibir os steps sendo executados em tempo real`
         - -p html_report --> `Gerar o relatório do(s) cenário(s) executado(s)`      
          -c --> `Exibir a cor dos steps em tempo real, VERDE o step passou corretamente e VERMELHO ocorreu alguma falha no step`

     - ambiente: prod
          prod --> `Para executar o testes no ambiente de produção, "homolog" para executar no ambiente de homologação.`

     - browser: :selenium
          :selenium --> `Executar os testes com o navegador Firefox`

     - html_report: `--format progress --format html --out=reports/html/features_report.html`
               "--out=`reports/html/features_report.html" caminho onde será salvo o relatório`

  - Arquivo homolog.yml           
        Url: https://www.amazon.com.br/
            `Url que será utilizada para executar os teste(s) no ambiente de homologação`

  - Arquivo prod.yml           
        Url: https://www.amazon.com.br/
            `Url que será utilizada para executar o teste no ambiente de Produção`

**Projeto**
  -

**Docker**
  ` Para executar os testes dentro do container do Docker`

  - Na raiz do projeto digitar o comando `sudo docker image build -t <nomedaimagem> . `
    Exemplo: `sudo docker image build -t geckodriver .`
      Obs: **O '.' sinaliza que você deseja criar a imagem com as configurações contidas no arquivo `Dockerfile`**

  - Em seguida executar o comando: `sudo docker run --name <nomedocontainer> geckodriver`
      Exemplo: `sudo docker run --name container_geckodriver geckodriver`



**Desenvolvedor**
    **Nome:** Bruno Henrique Araujo
    **Email:** lbruno.henrique.araujo@gmail.com
