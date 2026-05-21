---
name: execute-task
description: Executa a próxima tarefa de desenvolvimento disponível. Gatilhos: "/execute-task", "execute a tarefa", "implemente a tarefa", "próxima tarefa", "iniciar tarefa".
---

# execute-task

Skill para implementação de tarefas individuais definidas no arquivo de tasks. Executa uma tarefa por vez seguindo TechSpec e padrões do projeto, com verificação obrigatória ao final.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/execute-task"
- "Execute a task [N]"
- "Implemente a tarefa [N] de [funcionalidade]"
- "Executar tarefa [N]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Ler documentação | TechSpec, task específica e padrões do projeto |
| 2. Planejar | Listar arquivos a criar/modificar e definir a abordagem |
| 3. Implementar | Seguir subtarefas da task na ordem definida |
| 4. Verificar | Executar testes e type-checking; acionar `execute-review` se necessário |
| 5. Marcar completa | Atualizar `tasks.md` com `[x]` na tarefa concluída |

## Diretrizes e Restrições

<critical>IMPLEMENTA APENAS UMA TAREFA POR VEZ</critical>
<critical>INICIAR A IMPLEMENTAÇÃO LOGO APÓS O PLANEJAMENTO</critical>
<critical>MARCAR COMO COMPLETA EM TASKS.MD APÓS A CONCLUSÃO</critical>
<critical>SIGA OS PADRÕES E CONVENÇÕES DO PROJETO RIGOROSAMENTE</critical>

### 1. Entradas Obrigatórias
- TechSpec: `tasks/prd-[nome]/techspec.md`
- Task específica: `tasks/prd-[nome]/N_task.md`
- Índice de tasks: `tasks/prd-[nome]/tasks.md`

### 2. Comportamento de Implementação
- **Uma tarefa por vez**: Nunca avança para a próxima sem conclusão verificada.
- **Plano de Abordagem**: Listar passos claros antes de codificar.
- **Verificação**: Não finalize a tarefa até resolver problemas apontados em testes ou reviews.

---
## Checklist de Qualidade
- [ ] Task específica lida e entendida.
- [ ] Implementação alinhada com TechSpec.
- [ ] Testes executados e passando.
- [ ] Status atualizado em `tasks.md`.
