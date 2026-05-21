---
name: create-techspec
description: Gera especificação técnica (TechSpec) a partir de um PRD existente. Gatilhos: "/create-techspec", "crie a tech spec", "gere a techspec", "escreva a especificação técnica".
---

# create-techspec

Skill para geração de especificações técnicas (TechSpec) a partir de um PRD existente. Traduz requisitos de produto em orientações de arquitetura, decisões técnicas e contratos de implementação.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/create-techspec"
- "Crie a tech spec para [funcionalidade]"
- "Gere a techspec da feature de [funcionalidade]"
- "Escreva a especificação técnica para [funcionalidade]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Analisar PRD | Leitura completa do PRD em `tasks/prd-[nome]/prd.md` |
| 2. Explorar projeto | Mapear arquivos, módulos, dependências e padrões existentes |
| 3. Esclarecer | Perguntas técnicas objetivas (domínio, fluxo de dados, dependências externas) |
| 4. Mapear conformidade | Verificar regras e padrões do projeto |
| 5. Gerar TechSpec | Seguindo o template padronizado (máx. ~2.000 palavras) |
| 6. Salvar | `./tasks/prd-[nome-da-feature]/techspec.md` |

## Diretrizes e Restrições

<critical>EXPLORE O PROJETO PRIMEIRO ANTES DE FAZER PERGUNTAS DE ESCLARECIMENTO</critical>
<critical>NÃO GERE A ESPECIFICAÇÃO TÉCNICA SEM ANTES FAZER PERGUNTAS DE ESCLARECIMENTO</critical>
<critical>EM HIPÓTESE ALGUMA DESVIE DO PADRÃO DE <template> DA ESPECIFICAÇÃO TÉCNICA</critical>
<critical>EM HIPÓTESE ALGUMA IMPLEMENTE O CÓDIGO; O OBJETIVO É PRODUZIR A ESPECIFICAÇÃO TÉCNICA</critical>

### 1. Análise profunda do projeto (obrigatório)
- Descobrir arquivos envolvidos, módulos, interfaces e pontos de integração.
- Mapear símbolos, dependências e pontos críticos.
- Explorar estratégias de solução, padrões, riscos e alternativas.

### 2. Esclarecimentos técnicos (obrigatório)
Fazer perguntas objetivas sobre:
- Posicionamento no domínio e fluxo de dados.
- Dependências externas e principais interfaces.
- Cenários de teste.

### 3. Gerar e Salvar a TechSpec
- Documento de saída: `tasks/prd-[nome-da-funcionalidade]/techspec.md`
- **Foque no COMO, não no O QUÊ** (o PRD detém o o quê/por quê).
- Evite repetir requisitos funcionais do PRD; concentre-se em como implementar.

---

<template>
```markdown
# Especificação técnica

## Resumo executivo
[Visão técnica breve da abordagem da solução.]

## Arquitetura do sistema
### Visão dos componentes
[Descrição dos principais componentes e suas responsabilidades.]

## Design de implementação
### Principais interfaces
[Definir as principais interfaces de serviço.]

### Modelos de dados
[Definir estruturas de dados essenciais.]

### Endpoints da API
[Listar endpoints da API se aplicável.]

## Pontos de integração
[Integrações externas, autenticação e tratamento de erros.]

## Abordagem de testes
### Testes unitários / integração / E2E
[Estratégia de testes para garantir a qualidade.]

## Sequenciamento do desenvolvimento
### Ordem de construção
[Sequência de implementação e dependências técnicas.]

## Monitoramento e observabilidade
[Métricas, logs e dashboards.]

## Considerações técnicas
### Principais decisões / Riscos conhecidos
[Documentar decisões técnicas importantes e riscos potenciais.]
```
</template>
