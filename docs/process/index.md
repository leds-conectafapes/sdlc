# Diagrama BPMN do Processo

Modelo BPMN 2.0 do processo de desenvolvimento de software do LEDS. Clique na imagem para abri-la em tamanho original.

<div class="bpmn-diagram" markdown>
[![Diagrama BPMN do processo de desenvolvimento de software do LEDS](process.svg)](process.svg)
</div>

[:material-file-download: Baixar o diagrama em PNG](process.png){ download="process-leds-sdlc.png" }
&nbsp;·&nbsp;
[:material-file-download: Baixar o fonte `process.bpmn`](process.bpmn){ download="process.bpmn" }
&nbsp;·&nbsp;
[Abrir no editor bpmn.io](https://demo.bpmn.io/){ target="_blank" rel="noopener" }

O arquivo `process.bpmn` é a fonte da verdade do modelo e pode ser editado no [bpmn.io](https://demo.bpmn.io/), no [Camunda Modeler](https://camunda.com/download/modeler/) ou na extensão BPMN Editor do VS Code.

!!! tip "Regerando as imagens"

    Depois de editar o `process.bpmn`, rode `make bpmn` para regerar `process.svg` e `process.png` a partir do fonte. A conversão usa o [bpmn-to-image](https://github.com/bpmn-io/bpmn-to-image), utilitário oficial do bpmn.io, e requer Node.js.

---

## Pool 1 — Processo de Desenvolvimento de Software

Inicia quando o **entendimento macro do problema** já foi realizado e termina no refinamento técnico dos requisitos pela equipe de desenvolvimento.

### Fluxo

1. **Planejar Cronograma Macro do Projeto com os Goals** — Product Owner
2. **Modelar Processo Macro de um Goal** — Equipe de Análise *(subprocesso)*
3. **Criar um protótipo de baixa fidelidade** — UX Design *(subprocesso)*

    Roda em paralelo à continuação da análise; os dois caminhos se juntam antes do passo seguinte.

4. **Criar a Análise de Requisito Macro do Escopo** — Equipe de Análise *(subprocesso)*
5. **Planejar Entregas dos Requisitos e Versões do Escopo** — Equipe de Análise *(subprocesso, detalhado no Pool 2)*
6. **Revisar o Planejamento Macro focado no Goal escolhido** — Product Owner
7. Em paralelo:

    - **Analisar um requisito conforme planejamento** — Equipe de Análise
    - **Criar o Protótipo de Alta Fidelidade** — UX Design

8. **Refinamento Técnico dos Requisitos** — Equipe de Desenvolvimento

### Atividades por raia

| Raia | Atividades |
| --- | --- |
| Product Owner | Planejar Cronograma Macro do Projeto com os Goals; Revisar o Planejamento Macro focado no Goal escolhido |
| Equipe de Análise | Modelar Processo Macro de um Goal; Criar a Análise de Requisito Macro do Escopo; Planejar Entregas dos Requisitos e Versões do Escopo; Analisar um requisito conforme planejamento |
| UX Design | Criar um protótipo de baixa fidelidade; Criar o Protótipo de Alta Fidelidade |
| Equipe de Desenvolvimento | Refinamento Técnico dos Requisitos |

### Artefatos produzidos

| Artefato | Produzido por |
| --- | --- |
| Plano Macro de entregas dos Goals do Projeto | Planejar Cronograma Macro do Projeto com os Goals |
| Processo de negócio macro e escopo | Modelar Processo Macro de um Goal |
| Protótipo de Baixa Fidelidade | Criar um protótipo de baixa fidelidade |
| Modelos Macro de entendimento do problema | Criar a Análise de Requisito Macro do Escopo |
| Planejamento Macro de Entregas dos Requisitos e Versões | Planejar Entregas dos Requisitos e Versões do Escopo |
| Planejamento de entregas dos requisitos revisado e aprovado | Revisar o Planejamento Macro focado no Goal escolhido |
| Artefatos do domínio do problema | Analisar um requisito conforme planejamento |
| Artefatos de Projeto e Planejamento de desenvolvimento | Refinamento Técnico dos Requisitos |

---

## Pool 2 — Planejar Entregas de Requisitos e Versões de um Goal

Detalha o subprocesso de planejamento de entregas. Inicia com o **Cronograma Macro do Goal recebido** e termina com o **Planejamento de Requisitos e Versões aprovado**.

### Fluxo

1. **Modelar o processo macro do goal e definir escopo** — Analista de Requisitos *(subprocesso)*
2. Em paralelo:

    - **Criar protótipo de baixa fidelidade** — UX Design
    - **Criar os requisitos macros do escopo** — Analista de Requisitos *(subprocesso)*

3. **Planejar entregas dos Requisitos e Versões** — Analista de Requisitos *(subprocesso)*
4. **Revisar o Planejamento junto ao PO** — Analista de Requisitos

### Artefatos produzidos

| Artefato | Produzido por |
| --- | --- |
| Processo de negócio macro e escopo | Modelar o processo macro do goal e definir escopo |
| Protótipo de Baixa Fidelidade | Criar protótipo de baixa fidelidade |
| Artefatos de entendimento macro do escopo | Criar os requisitos macros do escopo |
| Planejamento Macro de Entregas dos Requisitos e Versões | Planejar entregas dos Requisitos e Versões |

---

!!! note "Manutenção"

    As descrições textuais acima foram derivadas do arquivo `process.bpmn` e existem para tornar o conteúdo do diagrama pesquisável. Ao alterar o modelo, atualize também esta página.
