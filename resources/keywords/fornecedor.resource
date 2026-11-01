
*** Settings ***
Library    Browser    auto_closing_level=KEEP
Resource    resources/Variables/fornecedor.resource


*** Keywords ***

# CT001 - Cadastrar fornecedor

Acessar fornecedores
    Click    a[id="lnkFornecedores"]

Clicar em novo fornecedor
    Click    button[id="btnAdicionarFornecedor"]

Preencher campo nome
    Fill Text    input[id="inpNomeFornecedor"]    ${nome}

Preencher campo email
    Fill Text    input[id="inpEmailFornecedor"]    ${email}

Preencher campo telefone
    Fill Text    input[id="inpTelefoneFornecedor"]    ${telefone}

Clicar em Salvar fornecedor
    Click    button[id="btnSalvarFornecedor"]

Clicar em Cancelar
    Click    button[id="btnCancelarFornecedor"]


# CT002 - Cadastrar fornecedor sem nome

Cadastrar fornecedor sem nome
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpEmailFornecedor"]    ${email}
    Fill Text    input[id="inpTelefoneFornecedor"]    ${telefone}
    Click    button[id="btnSalvarFornecedor"]
    Wait For Elements State    id=msgErroNomeFornecedor    visible
    ${mensagem}=    Get Text    id=msgErroNomeFornecedor
    Should Be Equal    ${mensagem}    O nome deve ter pelo menos 3 caracteres.


# CT003 - Cadastrar fornecedor sem email

Cadastrar fornecedor sem email
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpNomeFornecedor"]    ${nome}
    Fill Text    input[id="inpTelefoneFornecedor"]    ${telefone}
    Click    button[id="btnSalvarFornecedor"]


# CT004 - Cadastrar fornecedor com campos vazios

Cadastrar fornecedor com campos vazios
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Click    button[id="btnSalvarFornecedor"]


# CT005 - Cadastrar fornecedor com email inválido

Cadastrar fornecedor com email inválido
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpNomeFornecedor"]    ${nome}
    Fill Text    input[id="inpEmailFornecedor"]    ${email_invalido}
    Click    button[id="btnSalvarFornecedor"]


# CT006 - Cancelar cadastro de fornecedor

Cancelar cadastro de fornecedor
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpNomeFornecedor"]    ${nome}
    Fill Text    input[id="inpEmailFornecedor"]    ${email}
    Fill Text    input[id="inpTelefoneFornecedor"]    ${telefone}
    Click    button[id="btnCancelarFornecedor"]


# CT007 - Cadastrar fornecedor sem telefone

Cadastrar fornecedor sem telefone
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpNomeFornecedor"]    ${nome}
    Fill Text    input[id="inpEmailFornecedor"]    ${email}
    Click    button[id="btnSalvarFornecedor"]


# CT008 - Validar máscara do telefone

Validar máscara do telefone
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpTelefoneFornecedor"]    ${telefone}


# CT009 - Alterar dados do fornecedor antes de salvar

Alterar dados do fornecedor antes de salvar
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    Fill Text    input[id="inpNomeFornecedor"]    ${nome}
    Fill Text    input[id="inpNomeFornecedor"]    ${nome_alterado}
    Fill Text    input[id="inpEmailFornecedor"]    ${email}
    Click    button[id="btnSalvarFornecedor"]


# CT010 - Verificar campos vazios ao abrir novo cadastro

Verificar campos vazios ao abrir novo cadastro
    Click    a[id="lnkFornecedores"]
    Click    button[id="btnAdicionarFornecedor"]
    ${nome_atual}=    Get Property    input[id="inpNomeFornecedor"]    value
    ${email_atual}=    Get Property    input[id="inpEmailFornecedor"]    value
    ${telefone_atual}=    Get Property    input[id="inpTelefoneFornecedor"]    value
    Should Be Empty    ${nome_atual}
    Should Be Empty    ${email_atual}
    Should Be Empty    ${telefone_atual}
