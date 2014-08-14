SELECT TSeq_orgname, blastp100213totalhits.field4,blastp100213totalhits."BLAST origin",blastp100213lineagesnew.field5,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'TWA' or table1."BLAST origin" like 'TWA' THEN "TSeq_accver" END) AS TWA1,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'RanBPM' or table1."BLAST origin" like 'RanBPM' THEN "TSeq_accver" END) AS RanBPM,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'Rmnd5' or table1."BLAST origin" like 'Rmnd5' THEN "TSeq_accver" END) AS Rmnd5,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'MAEA' or table1."BLAST origin" like 'MAEA' THEN "TSeq_accver" END) AS MAEA,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'Muskelin' or table1."BLAST origin" like 'Muskelin' THEN "TSeq_accver" END) AS Muskelin,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'WDR26' or table1."BLAST origin" like 'WDR26' THEN "TSeq_accver" END) AS WDR26,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'Armc8' or table1."BLAST origin" like 'Armc8' THEN "TSeq_accver" END) AS Armc8,
  min(CASE WHEN blastp100213totalhits."BLAST origin" like 'c17orf39' or table1."BLAST origin" like 'c17orf39' THEN "TSeq_accver" END) AS c17orf39
FROM blastp100213totalhits
/*Where blastp100213totalhits.'field4' like 'Bacteria'*/	
left outer join table1 on blastp100213totalhits.TSeq_orgname like '%'||table1.Organism||'%'
left outer join blastp100213lineagesnew on blastp100213lineagesnew.field6 like blastp100213totalhits.TSeq_orgname 
where field14 like '%Nematoda%' or field14 like '%Trmatoda%' or field14 like '%Apicomplexa%' or field14 like '%Entamoeba%'
group by TSeq_orgname

