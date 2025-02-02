// ==========================================
// Autor: Denis Cassio Pardinho
// Data: 02/02//2025 14:00:00
// Descrição: Esta função em Power Query (M) gera uma tabela com os Estados do Brasil, incluindo informações essenciais como UF, nome completo, nome sem acento e região.
// Versão: 1.0
// Repositório: https://github.com/deniscassiopard/d_Estados
// Licença: MIT
// ==========================================

let
    // Cria a tabela manualmente com os estados.
    EstadosBrasil = 
    Table.FromRecords(
        {
            [UF = "AC", Estado = "Acre", EstadoSemAcento = "Acre", Regiao = "Norte"],
            [UF = "AL", Estado = "Alagoas", EstadoSemAcento = "Alagoas", Regiao = "Nordeste"],
            [UF = "AM", Estado = "Amazonas", EstadoSemAcento = "Amazonas", Regiao = "Norte"],
            [UF = "AP", Estado = "Amapá", EstadoSemAcento = "Amapa", Regiao = "Norte"],
            [UF = "BA", Estado = "Bahia", EstadoSemAcento = "Bahia", Regiao = "Nordeste"],
            [UF = "CE", Estado = "Ceará", EstadoSemAcento = "Ceara", Regiao = "Nordeste"],
            [UF = "DF", Estado = "Distrito Federal", EstadoSemAcento = "Distrito Federal", Regiao = "Centro-Oeste"],
            [UF = "ES", Estado = "Espírito Santo", EstadoSemAcento = "Espirito Santo", Regiao = "Sudeste"],
            [UF = "GO", Estado = "Goiás", EstadoSemAcento = "Goias", Regiao = "Centro-Oeste"],
            [UF = "MA", Estado = "Maranhão", EstadoSemAcento = "Maranhao", Regiao = "Nordeste"],
            [UF = "MG", Estado = "Minas Gerais", EstadoSemAcento = "Minas Gerais", Regiao = "Sudeste"],
            [UF = "MS", Estado = "Mato Grosso do Sul", EstadoSemAcento = "Mato Grosso do Sul", Regiao = "Centro-Oeste"],
            [UF = "MT", Estado = "Mato Grosso", EstadoSemAcento = "Mato Grosso", Regiao = "Centro-Oeste"],
            [UF = "PA", Estado = "Pará", EstadoSemAcento = "Para", Regiao = "Norte"],
            [UF = "PB", Estado = "Paraíba", EstadoSemAcento = "Paraiba", Regiao = "Nordeste"],
            [UF = "PE", Estado = "Pernambuco", EstadoSemAcento = "Pernambuco", Regiao = "Nordeste"],
            [UF = "PI", Estado = "Piauí", EstadoSemAcento = "Piaui", Regiao = "Nordeste"],
            [UF = "PR", Estado = "Paraná", EstadoSemAcento = "Parana", Regiao = "Sul"],
            [UF = "RJ", Estado = "Rio de Janeiro", EstadoSemAcento = "Rio de Janeiro", Regiao = "Sudeste"],
            [UF = "RN", Estado = "Rio Grande do Norte", EstadoSemAcento = "Rio Grande do Norte", Regiao = "Nordeste"],
            [UF = "RS", Estado = "Rio Grande do Sul", EstadoSemAcento = "Rio Grande do Sul", Regiao = "Sul"],
            [UF = "RO", Estado = "Rondônia", EstadoSemAcento = "Rondonia", Regiao = "Norte"],
            [UF = "RR", Estado = "Roraima", EstadoSemAcento = "Roraima", Regiao = "Norte"],
            [UF = "SC", Estado = "Santa Catarina", EstadoSemAcento = "Santa Catarina", Regiao = "Sul"],
            [UF = "SP", Estado = "São Paulo", EstadoSemAcento = "Sao Paulo", Regiao = "Sudeste"],
            [UF = "SE", Estado = "Sergipe", EstadoSemAcento = "Sergipe", Regiao = "Nordeste"],
            [UF = "TO", Estado = "Tocantins", EstadoSemAcento = "Tocantins", Regiao = "Norte"]
        }
    ),

    // Alteração de tipos de dados das colunas
    #"Tipos Alterados" = 
    Table.TransformColumnTypes(EstadosBrasil, 
        {
            {"UF", type text}, 
            {"Estado", type text}, 
            {"EstadoSemAcento", type text},
            {"Regiao", type text}
        }
    )
in
    #"Tipos Alterados"