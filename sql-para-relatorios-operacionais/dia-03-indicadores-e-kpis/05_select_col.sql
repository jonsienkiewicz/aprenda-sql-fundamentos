SELECT IdCliente,
        QtdePontos,
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,
        datetime(DtCriacao) AS DtCriacaoNova,
        strftime('%w', datetime(DtCriacao)) AS DtDiaSemana


FROM clientes