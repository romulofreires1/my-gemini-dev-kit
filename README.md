# Public Agent Skills

Repositório público de skills agnósticas para o ecossistema .agents.

Conjunto de skills para o Gemini CLI focadas no ciclo de desenvolvimento de software, desde a concepção (PRD) até a revisão final (Code Review).

## Skills Incluídas

- **create-prd**: Cria Documentos de Requisitos do Produto.
- **create-techspec**: Gera especificações técnicas.
- **create-tasks**: Decompõe a TechSpec em tarefas acionáveis.
- **execute-task**: Auxilia na implementação de tarefas individuais.
- **execute-bugfix**: Fluxo estruturado para correção de bugs com testes.
- **execute-qa**: Validação completa da implementação (E2E, Acessibilidade).
- **execute-review**: Code review estruturado baseado em git diff.

## Instalação

Para disponibilizar as skills no diretório global de skills do `.agents` (`~/.agents/skills`), utilize o script de vinculação:

```bash
chmod +x scripts/link-skills.sh
./scripts/link-skills.sh
```

## Estrutura

- `skills/`: Contém as definições de cada skill (`SKILL.md`).
- `scripts/`: Scripts utilitários (ex: `link-skills.sh`).
- `package.json`: Metadados do pacote.

## Requisitos

- `.agents` ou compatível.
- (Opcional) MCP Playwright para as skills de QA.
