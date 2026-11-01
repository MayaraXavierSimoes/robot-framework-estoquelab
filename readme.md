EstoqueLab - Automação de Testes com Robot Framework

Sobre o projeto

Este projeto tem como objetivo desenvolver e executar testes automatizados na aplicação EstoqueLab, um ambiente de simulação de gerenciamento de estoque criado para praticar Qualidade de Software (QA).

A automação utiliza o Robot Framework para validar funcionalidades, regras de negócio, campos, mensagens, fluxos e comportamentos da aplicação.

## Executar os testes

Na raiz do projeto, execute todos os testes sem gerar os relatórios HTML/XML do Robot Framework:

```bash
python -m robot --output NONE --log NONE --report NONE tests
```

Os resultados continuam aparecendo no terminal. Os arquivos de relatório e logs gerados localmente são ignorados pelo Git.