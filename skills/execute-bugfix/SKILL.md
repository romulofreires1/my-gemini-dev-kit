---
name: execute-bugfix
description: Corrige todos os bugs listados em bugs.md e cria testes de regressão. Gatilhos: "/execute-bugfix", "corrija os bugs", "execute o bugfix", "resolver bugs".
---

# execute-bugfix

Skill para correção estruturada de bugs com testes de regressão obrigatórios. Guia o agente por um fluxo de diagnóstico → reprodução → correção → verificação, garantindo que o bug não retorne.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/execute-bugfix"
- "Execute o bugfix de [funcionalidade]"
- "Corrija os bugs de [funcionalidade]"
- "Executar bugfix: [funcionalidade]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Analisar contexto | Ler `bugs.md`, PRD, TechSpec e padrões do projeto |
| 2. Planejar correções | Identificar causa raiz, arquivos afetados e planejar testes |
| 3. Implementar | Corrigir cada bug na ordem de severidade (Alta → Baixa) |
| 4. Testes de regressão | Escrever testes que falhariam sem a correção |
| 5. Validar | Usar ferramentas de teste e verificação visual se necessário |
| 6. Verificar | Executar suite completa — todos os testes devem passar |
| 7. Relatar | Atualizar `bugs.md` e gerar relatório final |

## Diretrizes e Restrições

<critical>CORRIGIR TODOS OS BUGS LISTADOS NO ARQUIVO BUGS.MD</critical>
<critical>CRIAR TESTES DE REGRESSÃO PARA CADA BUG CORRIGIDO</critical>
<critical>A TAREFA SÓ ESTÁ COMPLETA SE TODOS OS TESTES ESTIVEREM PASSANDO</critical>
<critical>RESOLVA A CAUSA RAIZ — NUNCA TRATE APENAS OS SINTOMAS</critical>

### 1. Análise de Contexto (Obrigatório)
- Ler `bugs.md` em `./tasks/prd-[nome-funcionalidade]/bugs.md`.
- Entender requisitos afetados no PRD e decisões técnicas na TechSpec.

### 2. Implementação e Testes (Obrigatório)
- **Reproduzir o problema** antes de fixar.
- **Mudança mínima** — alterar apenas o necessário.
- **Testes de Regressão**: Simular o cenário original; o teste deve falhar se a correção for revertida.

### 3. Atualização e Relatório
- Adicionar status "Corrigido" e descrição da correção em `bugs.md`.
- Gerar relatório com total de bugs, correções aplicadas e status dos testes.

---
## Checklist de Qualidade
- [ ] Causa raiz identificada e resolvida.
- [ ] Testes de regressão criados e passando.
- [ ] Verificação de tipagem e lint sem erros.
- [ ] `bugs.md` atualizado e relatório final gerado.
