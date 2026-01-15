-- Criação da estrutura inicial do banco de dados Seiki Burguer
-- Versão: 1.0 (Foco em Clientes e Fidelização)

-- Ativando extensão para IDs universais
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. Tabela de Clientes (Dimensão principal)
CREATE TABLE dim_clientes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome TEXT NOT NULL,
    endereco TEXT,
    observacoes TEXT,
    valor_gasto_historico NUMERIC(10,2) DEFAULT 0.00, -- Saldo acumulado do Excel
    data_cadastro TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabela de Telefones (Relacionamento 1:N)
-- Permite que vários números (família) pontuem no mesmo cadastro
CREATE TABLE dim_telefones (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    cliente_id UUID REFERENCES dim_clientes(id) ON DELETE CASCADE,
    numero TEXT NOT NULL UNIQUE, -- Formato E.164 (+55...)
    is_principal BOOLEAN DEFAULT false
);

-- 3. Tabela de Tags de Preferências
CREATE TABLE dim_tags_clientes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    cliente_id UUID REFERENCES dim_clientes(id) ON DELETE CASCADE,
    tag TEXT NOT NULL -- Ex: 'Sem Maionese', 'VIP', 'Adicional de Bacon'
);

-- Trava de segurança (Data Quality)
ALTER TABLE dim_clientes 
ADD CONSTRAINT check_gasto_positivo CHECK (valor_gasto_historico >= 0);
