select field4,TSeq_orgname,TWA1,RanBPM,Rmnd5,MAEA,Muskelin,WDR26,Armc8,c17orf39 from
(
select *,
  count(CASE WHEN "BLAST origin" like 'TWA' THEN "BLAST origin" END) AS TWA1,
  count(CASE WHEN "BLAST origin" like 'RanBPM' THEN "BLAST origin" END) AS RanBPM,
  count(CASE WHEN "BLAST origin" like 'Rmnd5' THEN "BLAST origin" END) AS Rmnd5,
  count(CASE WHEN "BLAST origin" like 'MAEA' THEN "BLAST origin" END) AS MAEA,
  count(CASE WHEN "BLAST origin" like 'Muskelin' THEN "BLAST origin" END) AS Muskelin,
  count(CASE WHEN "BLAST origin" like 'WDR26' THEN "BLAST origin" END) AS WDR26,
  count(CASE WHEN "BLAST origin" like 'Armc8' THEN "BLAST origin" END) AS Armc8,
  count(CASE WHEN "BLAST origin" like 'c17orf39' THEN "BLAST origin" END) AS c17orf39 from
(
select blastp100213lineagesnew.field5,blastp100213bksrch.field13,'blastp100213dt'.TSeq_gi, 'blastp100213dt'.TSeq_accver,'uniprotgenes'.field3,'blastp100213'.field11,'blastp100213dt'.TSeq_orgname,'blastp100213lineagesnew'.field4,"BLAST origin",TSeq_sequence from blastp100213dt
left outer join blastp100213 on blastp100213dt.TSeq_gi=blastp100213.field13
left outer join blastp100213bksrch on blastp100213dt.TSeq_gi=blastp100213bksrch.field14
left outer join blastqueries on "Query Gi"=blastp100213.field1
left outer join blastp100213lineagesnew on blastp100213lineagesnew.field5=TSeq_taxid
left outer join uniprotgenes on uniprotgenes.field1='blastp100213dt'.TSeq_accver
Where blastp100213.field11 <1e-17 AND blastp100213.field1 != "221486279" AND blastp100213.field1 != "237833555"
OR blastp100213bksrch.field13="39812378" AND "BLAST origin"="RanBPM"
OR blastp100213bksrch.field13="12232469" AND "BLAST origin"="Rmnd5"
OR blastp100213bksrch.field13="8923557" AND "BLAST origin"="TWA"
OR blastp100213bksrch.field13="31881798" AND "BLAST origin"="Muskelin"
OR blastp100213bksrch.field13="62953131" AND "BLAST origin"="MAEA"
OR blastp100213bksrch.field13="264681558" AND "BLAST origin"="WDR26"
OR blastp100213bksrch.field13="32526896" AND "BLAST origin"="Armc8"
OR blastp100213bksrch.field13="23111007" AND "BLAST origin"="C17orf39"
group by 'uniprotgenes'.field3
order 
by CASE
	when 'blastp100213'.field11<1e-40 then 3
	else 2
END,'blastp100213dt'.TSeq_orgname DESC,CASE
	when 'blastp100213'.field2 like '%NP%' THEN 3
	when 'blastp100213'.field2 like '%XP%' THEN 2
	else 1 
END, 'blastp100213'.field3 DESC
)
Group by TSeq_orgname
)
Order by field4,/*TWA1 DESC, RanBPM DESC, Rmnd5 DESC, MAEA DESC, Muskelin DESC, */WDR26 DESC/*, Armc8 DESC, c17orf39 DESC*/