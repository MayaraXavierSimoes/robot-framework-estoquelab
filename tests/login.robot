
*** Settings ***
Resource         ../resources/keywords/login.resource
Test Setup       Realizar login com usuario valido
Test Teardown    Finalizar teste

*** Test Cases ***
CT001 - Validar acesso ao sistema
    Wait For Elements State    a[id="lnkFornecedores"]    visible
