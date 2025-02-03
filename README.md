## Tabela de Estados do Brasil para Power BI e Power Query

Este repositório contém um código Power Query (M) para gerar uma tabela com os Estados do Brasil, incluindo informações essenciais como UF, nome completo, nome sem acento e região.

**Funcionalidades**<br>

Tabela completa com os 27 estados brasileiros.<br>
Inclui as colunas:<br>
UF → Sigla do estado (ex: SP, RJ, MG).<br>
Estado → Nome oficial do estado com acentos.<br>
EstadoSemAcento → Nome do estado sem acentos (útil para buscas e filtros).<br>
Regiao → Região correspondente (Norte, Nordeste, Centro-Oeste, Sudeste, Sul).<br>

**Como Usar**<br>
1. Copie o código do arquivo EstadosBrasil.m.<br>
2. No Power BI, vá para Transformar Dados.<br>
3. Crie uma Nova Consulta → Consulta em Branco.<br>
4. Cole o código e execute a consulta.<br>
5. Recomendo renomaer a consulta para ***d_Estados***. Utilize os dados no Power BI para criar visualizações e relatórios.
