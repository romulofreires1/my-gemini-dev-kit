---
name: create-tasks
description: Gera lista de tarefas detalhadas a partir de PRD e TechSpec. Gatilhos: "/create-tasks", "crie as tasks", "gere as tarefas", "criar lista de tarefas".
---

# create-tasks

Skill para geração de lista de tarefas detalhadas a partir de PRD e TechSpec. Produz um arquivo de índice (`tasks.md`) e arquivos individuais por tarefa (`N_task.md`), cada um com subtarefas, critérios de aceite e testes obrigatórios.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/create-tasks"
- "Crie as tasks para [funcionalidade]"
- "Gere as tarefas da feature de [funcionalidade]"
- "Criar lista de tarefas para [funcionalidade]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Analisar | Leitura do PRD e TechSpec para extrair requisitos e decisões técnicas |
| 2. Estruturar | Organizar tarefas em sequência lógica (máx. 10 tarefas) |
| 3. Aprovar | Exibir lista de alto nível e aguardar confirmação |
| 4. Gerar arquivos | `tasks.md` (índice) + `N_task.md` por tarefa principal |

## Diretrizes e Restrições

<critical>**ANTES DE GERAR QUALQUER ARQUIVO, MOSTRE A LISTA DE TAREFAS DE ALTO NÍVEL PARA APROVAÇÃO**</critical>
<critical>NÃO IMPLEMENTE NADA</critical>
<critical>CADA TAREFA DEVE SER UMA ENTREGA BEM DEFINIDA</critical>
<critical>É ESSENCIAL QUE PARA CADA TAREFA EXISTA UM CONJUNTO DE TESTES QUE GARANTA SEU FUNCIONAMENTO E O OBJETIVO DE NEGÓCIO</critical>

### 1. Analisar PRD e TechSpec
- PRD obrigatório: `tasks/prd-[nome-da-funcionalidade]/prd.md`
- TechSpec obrigatória: `tasks/prd-[nome-da-funcionalidade]/techspec.md`
- Extrair requisitos e identificar componentes principais.

### 2. Gerar a estrutura de tarefas
- Agrupar por entrega lógica.
- Backend antes de frontend; ambos antes de testes E2E.
- Máximo de 10 tarefas principais.
- Use o formato X.0 para tarefas principais e X.Y para subtarefas.

### 3. Gerar arquivos individuais
- Pasta: `./tasks/prd-[nome-da-funcionalidade]/`
- Índice: `tasks.md`
- Individuais: `[num]_task.md`

## Modelos

### Índice (tasks.md)
```markdown
# Resumo das tarefas de implementação de [Funcionalidade]

## Tarefas
- [ ] 1.0 Título da tarefa
- [ ] 2.0 Título da tarefa
```

### Tarefa Individual ([num]_task.md)
```markdown
# Tarefa X.0: [Título da tarefa]

## Visão geral
[Descrição breve]

## Subtarefas
- [ ] X.1 [Descrição]

## Critérios de sucesso
- [Resultados mensuráveis]

## Testes da tarefa
- [ ] Testes unitários
- [ ] Testes de integração
- [ ] Testes E2E (se aplicável)
```
