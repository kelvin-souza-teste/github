*** Settings ***
Documentation        Essa suite testa o site da magento.softwaretestingboard.com
Resource             moda.resource
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador



*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Men"
    [Documentation]      esse teste verifica o menu Men do site da magento.softwaretestingboard.com
    ...                  e verifica a categoria Computadores e Informática
    [Tags]           menu categorias
    Acessar a home page do site magento.softwaretestingboard.com
    Entrar no menu "Men" 
    Verificar se aparece a frase "Men"

caso de teste 02 - pesquisa de um produto
    [Tags]
    Acessar a home page do site magento.softwaretestingboard.com
    Digitar o nome de produto "jackets" no campo de pesquisa
    Clicar no botão de pesquisa 
    verificar se o titulo fica "Search results for: 'jackets'"

 
caso de teste 03 - colocar o produto no carrinha  
    [Tags]   tc03
     Dados onde estou no site da magento
     Quando acessor o produto "Fusion Backpack"
     E adiciono ao carrinho
     Entao devo ver o produto no carrinho
          
