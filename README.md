Este projeto documenta a estruturação profissional dos dados da minha hamburgueria, migrando de um sistema de anotações manuais para uma infraestrutura escalável focada em automação de marketing e fidelização de clientes.
Meu objetivo é implementar um programa de fidelidade com 6% de cashback com validade de 90 dias, utilizando automações para reduzir o trabalho manual e aumentar a retenção de clientes.

Estou utilizando:
Banco de Dados: Supabase (PostgreSQL)
ETL & Limpeza: Google Sheets
Automação (Em progresso): n8n
Documentação: GitHub

Os dados brutos do excel continham inconsistências de formatos. Realizei o tratamento de:
Telefones: Padronização para o formato internacional (E.164) para integração com APIs de mensageria.
Datas: Conversão para o padrão ISO 8601 (YYYY-MM-DD) para garantir a integridade no PostgreSQL.
Valores: Normalização de campos monetários para o tipo numeric

Antes
<img width="1807" height="999" alt="image" src="https://github.com/user-attachments/assets/0b6ad55c-989f-4ef7-a1fa-4170897f9d15" />
