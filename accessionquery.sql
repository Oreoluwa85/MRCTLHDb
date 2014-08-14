SELECT TSeq_orgname, "BLAST origin",
  min(CASE WHEN "BLAST origin" like 'TWA' THEN "TSeq_accver" END) AS TWA1,
  min(CASE WHEN "BLAST origin" like 'RanBPM' THEN "TSeq_accver" END) AS RanBPM,
  min(CASE WHEN "BLAST origin" like 'Rmnd5' THEN "TSeq_accver" END) AS Rmnd5,
  min(CASE WHEN "BLAST origin" like 'MAEA' THEN "TSeq_accver" END) AS MAEA,
  min(CASE WHEN "BLAST origin" like 'Muskelin' THEN "TSeq_accver" END) AS Muskelin,
  min(CASE WHEN "BLAST origin" like 'WDR26' THEN "TSeq_accver" END) AS WDR26,
  min(CASE WHEN "BLAST origin" like 'Armc8' THEN "TSeq_accver" END) AS Armc8,
  min(CASE WHEN "BLAST origin" like 'c17orf39' THEN "TSeq_accver" END) AS c17orf39
FROM blastp100213totalhits
/*Where blastp100213totalhits.'field4' like 'Bacteria'*/
group by TSeq_orgname