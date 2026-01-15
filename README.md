# seikiburguer-fidelizacao-cashback
Arquitetura de dados e automação de cashback para hamburgueria utilizando Supabase (PostgreSQL) e Make

Este projeto documenta a estruturação profissional dos dados da minha hamburgueria, migrando de um sistema de anotações manuais para uma infraestrutura escalável focada em automação de marketing e fidelização de clientes.
Meu objetivo é implementar um programa de fidelidade com 5% de cashback com validade de 90 dias, utilizando automações para reduzir o trabalho manual e aumentar a retenção de clientes.

# Estou utilizando:

Banco de Dados: Supabase (PostgreSQL)

Interface e Gestão: Glide Apps

Automação: Make.com

Inteligência Artificial: Agente de IA (OpenAI) para padronização de pedidos.

# Fluxo de Automação Planejado (Make + IA):

1. Entrada: Pedido recebido via WhatsApp/Webhook.

2. Processamento: Agente de IA valida produtos e padroniza dados.

3. Cálculo: Processamento automático de 5% de cashback (ajustado para viabilidade do negócio).

4. Persistência: Registro no Supabase com data de expiração (90 dias).


Os dados brutos do excel continham inconsistências de formatos. Realizei o tratamento de:
Telefones: Padronização para o formato internacional (E.164) para integração com APIs de mensageria.
Datas: Conversão para o padrão ISO 8601 (YYYY-MM-DD) para garantir a integridade no PostgreSQL.
Valores: Normalização de campos monetários para o tipo numeric

Antes
<img width="1792" height="886" alt="image" src="https://github.com/user-attachments/assets/6966d16d-036e-4ede-a8c1-11ca91639b7e" />

Depois Supabase
<img width="1421" height="846" alt="supabase clientes depois" src="https://github.com/user-attachments/assets/0fd2fc5c-66f1-402a-80d4-d232718ee81b" />
Captura de tela do banco de dados no Supabase. Os dados de identificação pessoal (PII) foram omitidos para garantir a privacidade dos clientes e conformidade com a LGPD.




## Minha jornada nesse projeto

Comecei o projeto utilizando meu caso real devido as necessidades que estava tendo na minha hamburgueria, estou tentando implementar cada etapa com ajuda de IA's. Fiz a limpeza e alterações de algumas planilhas no excel, utilizava células mescladas e percebi que supabase não estava reconhecendo arquivos .csv com células mescladas, então fiz a limpeza manualmente, depois descobri que poderia ter feito um script em python para acelerar o processo, uma solução para situações parecidas no futuro.
