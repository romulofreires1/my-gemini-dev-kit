# Public Agent Skills

Este projeto é um repositório central para o desenvolvimento de skills no padrão agnóstico `.agents`.

## Fluxo de Desenvolvimento

As skills são desenvolvidas na pasta `skills/`. Cada subpasta segue a anatomia oficial:
- `SKILL.md`: Instruções e metadados.
- `scripts/`: Scripts determinísticos.
- `assets/`: Templates e arquivos estáticos.
- `references/`: Documentação de suporte.

## Instalação (Link para Desenvolvimento)

Para instalar as skills deste projeto no diretório global do agente (`~/.agents/skills`), utilize o script de link:

```bash
./scripts/link-skills.sh
```

Isso criará links simbólicos para todas as skills em `skills/*`, permitindo que você edite o código aqui e veja as mudanças instantaneamente no Gemini CLI.

## Skills Disponíveis

### create-prd
Cria Documento de Requisitos do Produto (PRD) a partir de uma solicitação de feature.

### create-techspec
Gera especificação técnica (TechSpec) a partir de um PRD existente.

### create-tasks
Gera lista de tarefas detalhadas a partir de PRD e TechSpec.

### execute-task
Executa a próxima tarefa de desenvolvimento disponível.

### execute-bugfix
Corrige todos os bugs listados em bugs.md e cria testes de regressão.

### execute-qa
Valida a implementação contra PRD, TechSpec e Tasks.

### execute-review
Realiza code review estruturado da implementação atual.
