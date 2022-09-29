*** Settings ***
Documentation  Test Case 01: Access Amazon | [Tags] access_amazon | This test allows you to access the Amazon website |  Este teste permite acessar o site da Amazon
...            Test case 02: Create your amazon account | [Tags] create_account_amazon |  This test allows you to create your Amazon account  |  Este teste permite criar sua conta da Amazon 

Resource        ../../ResourceAmazon/RegistrationResourceAmazon/ResourceRegistrationAmazon.robot



*** Test Case ***
Test Case 01: Access Amazon
  [Documentation]   This test allows you to access the Amazon website  |  Este teste permite acessar o site da Amazon 
  [Tags]            access_amazon
  
  Given accsess page amazon and click "ola faca seu login contas e listas"

Test case 02: Create your amazon account
  [Documentation]   This test allows you to create your Amazon account  |  Este teste permite criar sua conta da Amazon 
  [Tags]            create_account_amazon

  Given click in "Criar sua conta da amazon"
  When fill in data in Amazon "Seu nome e sobrenome"
  And fill in data in Amazon "Número de celular ou e-mail"
  And fill in data in Amazon "Senha"
  And fill in data in Amazon "Insira a senha nova mais uma vez"
  Then click on "verificar email"