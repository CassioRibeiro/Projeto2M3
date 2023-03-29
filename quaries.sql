SELECT e.nome, COUNT(tr.id_tecnologia) AS num_tecnologias
FROM Empresa e
INNER JOIN Relatorios r ON e.ID = r.ID_Empresa
INNER JOIN Tec_Relatorios tr ON r.ID = tr.id_relatorio
INNER JOIN Tecnologias t ON tr.id_tecnologia = t.ID
WHERE EXTRACT(MONTH FROM r.Data_Relatorio) > 6
GROUP BY e.nome
ORDER BY num_tecnologias DESC
LIMIT 1;

SELECT e.nome, COUNT(tr.id_tecnologia) AS num_tecnologias
FROM Empresa e
INNER JOIN Relatorios r ON e.ID = r.ID_Empresa
INNER JOIN Tec_Relatorios tr ON r.ID = tr.id_relatorio
INNER JOIN Tecnologias t ON tr.id_tecnologia = t.ID
WHERE EXTRACT(MONTH FROM r.Data_Relatorio) <= 6
GROUP BY e.nome
ORDER BY num_tecnologias ASC
LIMIT 1;

SELECT COUNT(DISTINCT r.ID_Empresa) AS Empresas_Analise_Dados
FROM Relatorios r
JOIN Tec_Relatorios tr ON r.ID = tr.id_relatorio
JOIN Tecnologias t ON tr.id_tecnologia = t.ID
WHERE EXTRACT(MONTH FROM r.Data_Relatorio) > 6 and t.Area = 'Análise de Dados';

SELECT COUNT(DISTINCT r.ID_Empresa) AS Empresas_Nao_Usam_Analise_Dados
FROM Relatorios r
JOIN Tec_Relatorios tr ON r.ID = tr.id_relatorio
JOIN Tecnologias t ON tr.id_tecnologia = t.ID
WHERE  EXTRACT(MONTH FROM r.Data_Relatorio) > 6 and t.Area != 'Análise de Dados';