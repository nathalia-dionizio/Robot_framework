*** Settings ***
Library                            SeleniumLibrary
Resource                           ../../ResourceAmazon/RegistrationResourceAmazon/ResourceRegistrationAmazon.robot


*** Variable ***
${FIELD_EMAIL}                      //input[contains(@type,'email')]
${INPUT_EMAIL}                      robotteste1web@gmail.com
${CLICK_CONTINUE}                   //input[contains(@tabindex,'5')]
${FIELD_PASSWORD}                   //input[contains(@type,'password')]
${INPUT_PASSWORD}                   PdfrgH2576OP
${CLICK_LOGIN}                      //input[contains(@tabindex,'3')]


*** Keywords ***
# Test Case 01
click in "Continuar"
  accsess page amazon and click "ola faca seu login contas e listas"
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${FIELD_EMAIL} 
  Element Should Be Visible        ${FIELD_EMAIL} 
  Input Text                       ${FIELD_EMAIL}      ${INPUT_EMAIL}
  Click Element                    ${CLICK_CONTINUE}

to enter password
  Sleep                            3 seconds
  Wait Until Element Is Visible    ${FIELD_PASSWORD} 
  Element Should Be Visible        ${FIELD_PASSWORD} 
  Input Text                       ${FIELD_PASSWORD}      ${INPUT_PASSWORD}
  Click Element                    ${CLICK_LOGIN}