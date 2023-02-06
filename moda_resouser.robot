*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${BROWSER}                 Edge
${URL}                     https://magento.softwaretestingboard.com/
${Menu_Men}                //a[@id='ui-id-5']
${HEADER_Men}              //span[@class='base']


*** Keywords ***
Abrir o navegador
    Open Browser       browser=${BROWSER}
    Maximize Browser Window


Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar a home page do site magento.softwaretestingboard.com
      Go To    url=${URL}
      Wait Until Element Is Visible      ${Menu_Men} 
 

Entrar no menu "Men"
     Click Element    ${Menu_Men} 



Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains         text=${FRASE}
    Wait Until Element Is Visible    ${HEADER_Men}  



Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}



Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible        (//font[contains(.,'${NOME_CATEGORIA}')])[6]



Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
      Input Text       //input[@name='q']      text=${PRODUTO}



Clicar no botão de pesquisa 
       Click Element     //button[@title='Search']



verificar o resultado da pesquisa, listando o produto "${PRODUTO}"
        Wait Until Element Is Visible      //span[@class='${PRODUTO}']

# GHARKIN STEPS
Dado que estou na home page da magento.softwaretestingboard.com
         Acessar a home page do site magento.softwaretestingboard.com

Quando acessar o menu "Men"
        Entrar no menu "Men"


E o texto "Men" deve ser exibido na pagina 
        Verificar se aparece a categoria "Men"


Quando pesquisar pelo produto "${PRODUTO}"
        Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
        Clicar no botão de pesquisa 

verificar se o titulo fica "${PRODUTO}"
        Wait until Element Is Visible        //span[contains(@class,'base')]

Dados onde estou no site da magento
        Acessar a home page do site magento.softwaretestingboard.com

Quando acessor o produto "${PRODUTO}"
        Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
        Clicar no botão de pesquisa 
        Click Element      //strong[@class='product name product-item-name'][contains(.,'Fusion Backpack')]

E adiciono ao carrinho
        Click Element      //button[@title='Add to Cart']
                              
Entao devo ver o produto no carrinho
  Sleep   2s      
        Click Element           xpath=//a[@class='action showcart']
        Wait Until Element Is Visible        //div[@class='minicart-items-wrapper']
