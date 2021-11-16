*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}     http://automationpractice.com

*** Keywords ***
#### SETUP e TEARDOWN
Abrir navegador
    Open BROWSER  about:blank   ${BROWSER}

Fechar navegador
    Close BROWSER

### Passo-a-Passo
Acessar a página home do site
    Go To  http://automationpractice.com
    Title Should Be   My Store

Digitar o nome do produto "${produto}" no campo de Pesquisa
  Input Text     name=search_query  ${produto}

Clicar no botão Pesquisar
    Click Element      name=submit_search

Conferir se o produto "Blouse" foi listado no site
    Wait Until Element Is Visible    css=#center_column > h1
    Title Should Be                  Search - My Store
    Page Should Contain Image        
