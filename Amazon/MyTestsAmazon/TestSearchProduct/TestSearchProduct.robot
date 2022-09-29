*** Settings ***
Documentation  This test allows you to access the Amazon website and perform a product search |  Este teste permite acessar o site da Amazon e realizar uma pesquisa de produto
Resource        ../../ResourceAmazon/ResourceSearchProduct/ResourceSearchProduct.robot

*** Test Case ***
Test Case 01: search product in site Amazon
  [Documentation]   This test allows you to access the Amazon website and perform a product search |  Este teste permite acessar o site da Amazon e realizar uma pesquisa de produto
  [Tags]            search_product_Amazon
  
  Given search product in site "Amazon"
  When check if the product really appeared "Amazon"
  Then add product to cart "Amazon"