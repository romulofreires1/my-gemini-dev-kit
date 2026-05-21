# myGeminiDevKit

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

Para instalar este plugin no seu Gemini CLI, use o comando:

```bash
gemini extensions install https://github.com/romulofreires1/my-gemini-dev-kit.git
```

Ou, se estiver desenvolvendo localmente:

```bash
gemini extensions link .
```

## Estrutura

- `skills/`: Contém as definições de cada skill (`SKILL.md`).
- `gemini-extension.json`: Manifesto da extensão para o Gemini CLI.
- `package.json`: Metadados do pacote.

## Requisitos

- [Gemini CLI](https://geminicli.com) instalado.
- (Opcional) MCP Playwright para as skills de QA.
