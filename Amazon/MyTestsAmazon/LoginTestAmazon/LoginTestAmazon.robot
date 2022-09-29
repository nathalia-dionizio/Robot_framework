*** Settings ***
Documentation  This test allows you to access the Amazon website and login to the platform |  Este teste permite acessar o site da Amazon e realizar login na plataforma 
Resource        ../../ResourceAmazon/LoginResourceAmazon/LoginResourceAmazon.robot

*** Test Case ***
Test Case 01: Login
  [Documentation]   This test allows you to access the Amazon website and login to the platform |  Este teste permite acessar o site da Amazon e realizar login na plataforma
  [Tags]            LoginWeb_Amazon
  
  Given click in "Continuar"
  When to enter password
 