SELECT 
	  MIN(p.valor) faturamento_minimo,
	  MAX(p.valor) faturamento_maximo,
    ROUND(AVG(p.valor),2) faturamento_medio,
    ROUND(SUM(valor),2) faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u 
ON p.id_plan = u.id_plan ;