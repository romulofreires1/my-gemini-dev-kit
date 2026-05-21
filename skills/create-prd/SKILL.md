---
name: create-prd
description: Cria Documento de Requisitos do Produto (PRD) a partir de uma solicitação de feature. Gatilhos: "/create-prd", "crie o PRD", "escreva o PRD", "criar documento de requisitos".
---

# create-prd

Skill para criação de Documentos de Requisitos do Produto (PRD) a partir de solicitações de feature. Guia o agente por um fluxo estruturado de esclarecimento → planejamento → redação → salvamento, garantindo requisitos claros e testáveis.

## Como invocar

O usuário pode acionar esta skill usando frases como:
- "/create-prd"
- "Crie o PRD para [funcionalidade]"
- "Escreva o PRD da feature de [funcionalidade]"
- "Criar documento de requisitos para [funcionalidade]"

## Fluxo de trabalho

| Etapa | Ação |
| ----- | ---- |
| 1. Esclarecer | Perguntas sobre problema, funcionalidade, restrições e escopo |
| 2. Planejar | Abordagem seção a seção, pesquisa de regras de negócio |
| 3. Redigir | PRD seguindo o template padronizado (máx. 2.000 palavras) |
| 4. Salvar | `./tasks/prd-[nome-da-feature]/prd.md` |
| 5. Relatar | Caminho do arquivo + resumo breve |

## Diretrizes e Restrições

<critical>NÃO GERAR O PRD SEM ANTES FAZER PERGUNTAS DE ESCLARECIMENTO (USE A SUA FERRAMENTA PARA PERGUNTAR AO USUÁRIO)</critical>
<critical>EM HIPÓTESE ALGUMA DESVIAR DO <template> PRD</critical>
<critical>NÃO INCLUA IMPLEMENTAÇÃO NO PRD</critical>

### 1. Esclarecer (perguntas obrigatórias)
Faça perguntas para entender:
- Problema a resolver
- Funcionalidade principal
- Restrições
- O que **NÃO está no escopo**

### 2. Planejar (obrigatório)
Crie um plano de desenvolvimento do PRD incluindo:
- Abordagem seção por seção do <template>
- Áreas que precisam de pesquisa (**use busca na web para regras de negócio**)
- Premissas e dependências

### 3. Rascunhar o PRD (obrigatório)
- Use o modelo da seção <template>
- **Foque no O QUÊ e no POR QUÊ, não no COMO**
- Inclua requisitos funcionais numerados
- Limite o documento principal a no máximo 2.000 palavras

### 4. Criar diretório e salvar (obrigatório)
- Crie o diretório: `./tasks/prd-[nome-da-feature]/` (nome em kebab-case)
- Salve o PRD em: `./tasks/prd-[nome-da-feature]/prd.md`

### 5. Relatar resultados
- Informe o caminho final do arquivo
- Informe um resumo **MUITO BREVE** do resultado final do PRD

## Checklist de Qualidade
- [ ] Perguntas de esclarecimento concluídas e respondidas
- [ ] Plano detalhado criado
- [ ] PRD gerado com o modelo
- [ ] Requisitos funcionais numerados incluídos
- [ ] Arquivo salvo em `./tasks/prd-[nome-da-feature]/prd.md`
- [ ] Caminho final e resumo fornecidos

---

<template>
```markdown
# Documento de Requisitos do Produto (PRD)

## Visão Geral
[Forneça uma visão geral do seu produto/funcionalidade. Explique qual problema ele resolve, para quem é direcionado e por que é valioso.]

## Objetivos
[Listar objetivos específicos e mensuráveis para esta funcionalidade:
- O que significa ter sucesso
- Principais métricas a serem acompanhadas
- Metas de negócios a serem alcançadas]

## Histórias de Usuário
[Detalhe narrativas de usuários descrevendo o uso e os benefícios da funcionalidade:
- Como [tipo de usuário], eu quero [realizar uma ação] para que [benefício]
- Inclua personas de usuário primárias e secundárias
- Cubra fluxos principais e casos de borda]

## Principais funcionalidades
[Liste e descreva as principais funcionalidades do produto. Para cada uma, inclua:
- O que faz
- Por que é importante
- Como funciona em alto nível
- Requisitos funcionais (numerados para clareza)]

## Experiência do usuário
[Descreva a jornada e a experiência do usuário:
- Personas e necessidades
- Fluxos principais e interações
- Considerações e requisitos de UI/UX
- Requisitos de acessibilidade]

## Restrições técnicas de alto nível
[Capture apenas restrições e considerações de alto nível:
- Integrações externas obrigatórias ou sistemas existentes com os quais interagir
- Exigências de conformidade, regulatórias ou de segurança
- Metas de desempenho/escala (ex.: TPS esperado, limites superiores de latência)
- Considerações sobre sensibilidade/privacidade de dados
- Requisitos de tecnologia ou protocolo não negociáveis]

## Fora do escopo
[Estado claramente o que esta feature NÃO incluirá para gerir o escopo:
- Funcionalidades explicitamente excluídas
- Considerações futuras fora do escopo
- Limites e restrições]
```
</template>
