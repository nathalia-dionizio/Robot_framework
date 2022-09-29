*** Settings ***
Library                            SeleniumLibrary



*** Variable ***
${URL}                             https://www.amazon.com.br
${BROWSER}                         chrome 
${OPTIONS}                         //a[contains(@data-nav-ref,'nav_ya_signin')]
${CLICK_CREATE_ACCOUNT_AMAZON}      //a[@tabindex='6'][contains(.,'Criar sua conta da Amazon')]
${FIELD_NAME}                      //input[@type='text'][contains(@id,'name')]
${INPUT_NAME}                      Robot Teste
${FIELD_EMAIL_OR_PHONE}            //input[@type='email'][contains(@id,'email')]
${INPUT_EMAIL_OR_PHONE}            robotteste1web@gmail.com
${FIELD_PASSWORD}                  //input[contains(@placeholder,'Pelo menos 6 caracteres')]
${INPUT_PASSWORD}                  PdfrgH2576OP
${FIELD_AGAIN_PASSWORD}            //input[@type='password'][contains(@id,'check')]
${CHECK_EMAIL}                     //input[contains(@tabindex,'8')]

*** Keywords ***
# Test Case 01

accsess page amazon and click "ola faca seu login contas e listas"
  Open Browser                     ${URL}               ${BROWSER} 
  Maximize Browser Window
  Wait Until Element Is Visible    ${OPTIONS} 
  Element Should Be Visible        ${OPTIONS} 
  Click Element                    ${OPTIONS}

# Test Case 02
click in "Criar sua conta da amazon"
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${CLICK_CREATE_ACCOUNT_AMAZON} 
  Element Should Be Visible        ${CLICK_CREATE_ACCOUNT_AMAZON} 
  Click Element                    ${CLICK_CREATE_ACCOUNT_AMAZON}

fill in data in Amazon "Seu nome e sobrenome"
  Sleep                            2 seconds
  Wait Until Element Is Visible    ${FIELD_NAME} 
  Element Should Be Visible        ${FIELD_NAME}  
  Input Text                       ${FIELD_NAME}   ${INPUT_NAME} 

fill in data in Amazon "Número de celular ou e-mail"
  Sleep                            2 seconds
  Wait Until Element Is Visible    ${FIELD_EMAIL_OR_PHONE} 
  Element Should Be Visible        ${FIELD_EMAIL_OR_PHONE} 
  Input Text                       ${FIELD_EMAIL_OR_PHONE}    ${INPUT_EMAIL_OR_PHONE} 

fill in data in Amazon "Senha"
  Sleep                            2 seconds
  Wait Until Element Is Visible    ${FIELD_PASSWORD} 
  Element Should Be Visible        ${FIELD_PASSWORD} 
  Input Text                       ${FIELD_PASSWORD}    ${INPUT_PASSWORD} 

And fill in data in Amazon "Insira a senha nova mais uma vez"
  Sleep                            2 seconds
  Wait Until Element Is Visible    ${FIELD_AGAIN_PASSWORD} 
  Element Should Be Visible        ${FIELD_AGAIN_PASSWORD} 
  Input Text                       ${FIELD_AGAIN_PASSWORD}    ${INPUT_PASSWORD} 

click on "verificar email"
  Sleep                            2 seconds
  Wait Until Element Is Visible    ${CHECK_EMAIL} 
  Element Should Be Visible        ${CHECK_EMAIL} 
  Click Element                    ${CHECK_EMAIL} 
  log                              Check your email account and proceed there.| Verificar sua conta email e prosseguir por lá.