*** Settings ***
Resource    resources/keywords/login.resource
Resource    resources/keywords/fornecedor.resource

Test Setup       Realizar login com usuario valido
Test Teardown    Finalizar teste


*** Test Cases ***

CT001 - Cadastrar fornecedor
    Acessar fornecedores
    Clicar em novo fornecedor
    Preencher campo nome
    Preencher campo email
    Preencher campo telefone
    Clicar em Salvar fornecedor


CT002 - Cadastrar fornecedor sem nome
    Cadastrar fornecedor sem nome


CT003 - Cadastrar fornecedor sem email
    Cadastrar fornecedor sem email


CT004 - Cadastrar fornecedor com campos vazios
    Cadastrar fornecedor com campos vazios


CT005 - Cadastrar fornecedor com email inválido
    Cadastrar fornecedor com email inválido


CT006 - Cancelar cadastro de fornecedor
    Cancelar cadastro de fornecedor


CT007 - Cadastrar fornecedor sem telefone
    Cadastrar fornecedor sem telefone


CT008 - Validar máscara do telefone
    Validar máscara do telefone


CT009 - Alterar dados do fornecedor antes de salvar
    Alterar dados do fornecedor antes de salvar


CT010 - Verificar campos vazios ao abrir novo cadastro
    Verificar campos vazios ao abrir novo cadastro
