// Identificar los Principales Tipos de Quejas

SELECT
  COMPLAINT_TYPE,
  count(*) as counter
FROM
  NYC.PUBLIC.DATA
GROUP BY
    COMPLAINT_TYPE
ORDER BY counter desc
LIMIT
  5;

// Analizar Quejas por Distrito
SELECT
  BOROUGH,
  count(*) as counter
FROM
  NYC.PUBLIC.DATA
GROUP BY
    BOROUGH
ORDER BY counter desc;

// Filtrar Tipos de Quejas de Alto Volumen
SELECT
  DESCRIPTOR,
  count(*) as counter
FROM
  NYC.PUBLIC.DATA
WHERE 
  DESCRIPTOR like 'Loud%'
GROUP BY
    DESCRIPTOR
HAVING 
  counter > 10
ORDER BY counter desc;

// Comparación de Distritos para un Tipo Específico de Queja
SELECT
  BOROUGH,
  count(*) as counter
FROM
  NYC.PUBLIC.DATA
WHERE COMPLAINT_TYPE = 'Noise - Residential'
GROUP BY
    BOROUGH
ORDER BY counter desc
