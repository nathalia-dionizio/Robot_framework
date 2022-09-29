*** Settings ***
Library                            SeleniumLibrary



*** Variable ***
${URL}                             https://www.amazon.com.br
${BROWSER}                         chrome 
${FIELD_SEARCH}                    //input[contains(@type,'text')]
${INPUT_SEARCH}                    playstation 5
${CLICK_SEARCH}                    //input[contains(@value,'Ir')]
${PRODUCT_PLAYSTATION5}            //img[contains(@alt,'PlayStation®5 + Horizon Forbidden West')]
${ADD_CART}                        //input[contains(@name,'submit.add-to-cart')]


*** Keywords ***
# Test Case 01
search product in site "Amazon"
  Open Browser                     ${URL}               ${BROWSER} 
  Maximize Browser Window
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${FIELD_SEARCH} 
  Element Should Be Visible        ${FIELD_SEARCH} 
  Input Text                       ${FIELD_SEARCH}      ${INPUT_SEARCH}
  Capture Page Screenshot
  Wait Until Element Is Visible    ${CLICK_SEARCH}
  Element Should Be Visible        ${CLICK_SEARCH}
  Click Element                    ${CLICK_SEARCH}

check if the product really appeared "Amazon"
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${PRODUCT_PLAYSTATION5} 
  Element Should Be Visible        ${PRODUCT_PLAYSTATION5} 
  Capture Element Screenshot       ${PRODUCT_PLAYSTATION5}

add product to cart "Amazon"
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${PRODUCT_PLAYSTATION5} 
  Element Should Be Visible        ${PRODUCT_PLAYSTATION5}
  Click Element                    ${PRODUCT_PLAYSTATION5}
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${ADD_CART} 
  Element Should Be Visible        ${ADD_CART}
  Scroll Element Into View         ${ADD_CART}
  Click Element                    ${ADD_CART}
  Sleep                            3 seconds
  Page Should Contain              Adicionado ao carrinho
  Capture Page Screenshot
