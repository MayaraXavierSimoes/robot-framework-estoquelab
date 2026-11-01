
*** Settings ***
Library    Browser    auto_closing_level=KEEP    enable_playwright_debug=disabled
Resource    ../variables/login.resource

*** Keywords ***

Realizar login com usuario valido
    New Browser    chromium    headless=False
    New Page    ${URL}

    Fill Text    input[id="inpUsuarioLogin"]    ${USUARIO}
    Fill Text    input[id="inpSenhaLogin"]    ${SENHA}

    Click    button[id="btnEntrar"]
    
    Get Text    div[id="areaToasts"]    contains    realizado com sucesso!

Finalizar teste
    #Close Browser
    No operation