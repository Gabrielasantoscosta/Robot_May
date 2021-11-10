*** Settings ***
Resource          ../resource/Resource.robot
Test SETUP       Abrir navegador
Test TEARDOWN    Fechar navegador

### SETUP ele roda keyword antes da suite ou antes de um Teste
### TEARDOWN ele roda keyword depois de uma suite ou um Teste

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
# ***Digitar o nome do produto "Blouse" no campo de Pesquisa
# ***Clicar no botão Pesquisar
# ***Conferir se o produto "Blouse" foi listado no site
#
# Caso de Teste 02: Pesquisar produto não existente
# ***Acessar a página home do site
# ***Digitar o nome do produto "Blouse" no campo de Pesquisa
# ***Clicar no botão Pesquisar
# ***Conferir mensagem de erro "No results were found for yout search" "itemNãoExistente"
#
# *** Keywords ***
