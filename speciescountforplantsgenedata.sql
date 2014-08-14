SELECT field4,TSeq_orgname, 
  count(CASE WHEN "BLAST origin" like 'TWA' THEN "BLAST origin" END) AS TWA1,
  count(CASE WHEN "BLAST origin" like 'RanBPM' THEN "BLAST origin" END) AS RanBPM,
  count(CASE WHEN "BLAST origin" like 'Rmnd5' THEN "BLAST origin" END) AS Rmnd5,
  count(CASE WHEN "BLAST origin" like 'MAEA' THEN "BLAST origin" END) AS MAEA,
  count(CASE WHEN "BLAST origin" like 'Muskelin' THEN "BLAST origin" END) AS Muskelin,
  count(CASE WHEN "BLAST origin" like 'WDR26' THEN "BLAST origin" END) AS WDR26,
  count(CASE WHEN "BLAST origin" like 'Armc8' THEN "BLAST origin" END) AS Armc8,
  count(CASE WHEN "BLAST origin" like 'c17orf39' THEN "BLAST origin" END) AS c17orf39
FROM plantdups
left outer join plantgene2 on TSeq_gi like ProteinGi
where field4 like 'Viridiplantae' AND Gene_Acc not like ''
group by TSeq_orgname