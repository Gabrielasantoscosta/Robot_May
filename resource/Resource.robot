*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}     http://automationpractice.com

*** Keywords ***
#### SETUP e TEARDOWN
Abrir navegador
    Open BROWSER  http://automationpractice.com   chrome

Fechar navegador
    Close BROWSER

### Passo-a-Passo
Acessar a página home do site
    Go To  http://automationpractice.com
    Title Should Be   My Store
