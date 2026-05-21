---
name: execute-qa
description: Valida a implementação contra PRD, TechSpec e Tasks usando Playwright MCP. Gatilhos: "/execute-qa", "execute o QA", "valide a implementação", "testar a feature", "rodar QA".
---

# execute-qa

Skill para validação de implementação contra PRD, TechSpec e Tasks usando Playwright MCP. Executa testes E2E, verificações de acessibilidade (WCAG 2.2) e análises visuais, gerando relatório final com evidências.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/execute-qa"
- "Execute o QA de [funcionalidade]"
- "Valide a implementação de [funcionalidade]"
- "Testar a feature [funcionalidade]"
- "Rodar QA de [funcionalidade]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Analisar documentação | Extrair requisitos funcionais do PRD e decisões da TechSpec |
| 2. Preparar ambiente | Verificar aplicação em localhost via ferramentas de navegador |
| 3. Testes E2E | Executar cada fluxo de usuário e validar resultados |
| 4. Acessibilidade | Verificar navegação por teclado, labels, contraste e semântica |
| 5. Verificações visuais | Screenshots dos estados principais (vazio, com dados, erro) |
| 6. Relatório | Gerar `qa-report.md` e atualizar `bugs.md` se necessário |

## Diretrizes e Restrições

<critical>UTILIZE FERRAMENTAS DE NAVEGAÇÃO (PLAYWRIGHT) PARA EXECUTAR TESTES E2E</critical>
<critical>VERIFIQUE TODOS OS REQUISITOS DO PRD ANTES DE APROVAR</critical>
<critical>DOCUMENTE TODOS OS BUGS ENCONTRADOS COM EVIDÊNCIAS EM BUGS.MD</critical>
<critical>SIGA O PADRÃO WCAG 2.2 PARA ACESSIBILIDADE</critical>

### 1. Testes E2E e Acessibilidade
- Navegar para as páginas e capturar o estado (snapshot).
- Validar fluxos de botões, formulários e mensagens.
- **Acessibilidade**: Testar navegação por Tab/Enter, conferir labels e alt text.

### 2. Documentação de Bugs (bugs.md)
Se encontrar falhas, crie/atualize `tasks/prd-[nome-da-feature]/bugs.md`:
- **Severidade**: Alta / Média / Baixa.
- **Passos para reproduzir** e **Comportamento esperado vs atual**.
- **Evidência**: Screenshot ou log.

### 3. Relatório Final (qa-report.md)
Salvar em `tasks/prd-[nome-da-feature]/qa-report.md` com:
- Status final (APROVADO / REPROVADO).
- Tabela de requisitos verificados e checklist de acessibilidade.

---
## Checklist de Qualidade
- [ ] Requisitos do PRD extraídos e testados.
- [ ] Ambiente localhost validado.
- [ ] Acessibilidade e visual conferidos.
- [ ] `bugs.md` e `qa-report.md` atualizados/gerados.
