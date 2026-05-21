---
name: execute-review
description: Realiza code review estruturado da implementação atual. Gatilhos: "/execute-review", "faça o code review", "review do código", "revisar a implementação".
---

# execute-review

Skill para code review estruturado da implementação atual. Analisa mudanças via `git diff`, verifica conformidade com padrões e TechSpec, executa testes e gera relatório com status de aprovação.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/execute-review"
- "Faça o code review de [funcionalidade]"
- "Review do código de [funcionalidade]"
- "Revisar a implementação de [funcionalidade]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Analisar documentação | Ler TechSpec, tasks e padrões do projeto |
| 2. Analisar mudanças | Usar `git diff` e `git log` para entender o que foi alterado |
| 3. Verificar conformidade | Checar nomenclatura, estrutura, DRY, SOLID e segurança |
| 4. Verificar TechSpec | Validar se a arquitetura e contratos seguem o planejado |
| 5. Executar testes | Rodar a suite de testes; o review é bloqueado se algum falhar |
| 6. Relatório | Salvar `codereview.md` com status e recomendações |

## Diretrizes e Restrições

<critical>UTILIZE GIT DIFF PARA ANALISAR AS MUDANÇAS DE CÓDIGO</critical>
<critical>TODOS OS TESTES DEVEM PASSAR ANTES DE APROVAR O REVIEW</critical>
<critical>A IMPLEMENTAÇÃO DEVE SEGUIR EXATAMENTE A TECHSPEC E AS TASKS</critical>

### 1. Critérios de Aprovação
- **APROVADO**: Critérios atendidos, testes passando, código conforme padrões.
- **APROVADO COM RESSALVAS**: Melhorias recomendadas não bloqueantes.
- **REPROVADO**: Testes falhando, violação grave de padrões ou falhas de segurança.

### 2. Análise Técnica
- **Complexidade**: Funções curtas, baixa complexidade ciclomática.
- **Qualidade**: DRY, SOLID, nomes descritivos, tratamento de erros adequado.
- **Segurança**: Verificar vulnerabilidades óbvias (SQL Injection, XSS, etc.).

### 3. Saída (codereview.md)
Salvar em `./tasks/prd-[nome-funcionalidade]/codereview.md` com:
- Status final e resumo de mudanças.
- Tabela de problemas encontrados (severidade, arquivo, descrição e sugestão).
- Pontos positivos e recomendações.

---
## Checklist de Qualidade
- [ ] Documentação de referência lida (TechSpec/Tasks).
- [ ] Git diff analisado detalhadamente.
- [ ] Testes executados e 100% passando.
- [ ] Relatório final gerado e salvo.
