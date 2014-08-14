SELECT TSeq_orgname, "BLAST origin",
  min(CASE WHEN "BLAST origin" like 'TWA' THEN "BLAST origin" END) AS TWA1,
  min(CASE WHEN "BLAST origin" like 'RanBPM' THEN "BLAST origin" END) AS RanBPM,
  min(CASE WHEN "BLAST origin" like 'Rmnd5' THEN "BLAST origin" END) AS Rmnd5,
  min(CASE WHEN "BLAST origin" like 'MAEA' THEN "BLAST origin" END) AS MAEA,
  min(CASE WHEN "BLAST origin" like 'Muskelin' THEN "BLAST origin" END) AS Muskelin,
  min(CASE WHEN "BLAST origin" like 'WDR26' THEN "BLAST origin" END) AS WDR26,
  min(CASE WHEN "BLAST origin" like 'Armc8' THEN "BLAST origin" END) AS Armc8,
  min(CASE WHEN "BLAST origin" like 'c17orf39' THEN "BLAST origin" END) AS c17orf39

FROM fig1bhits
group by TSeq_orgname