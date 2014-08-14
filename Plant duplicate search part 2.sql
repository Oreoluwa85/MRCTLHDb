select * from
(
select * from
(
select * from
(
select blastp100213bksrch.field13,'blastp100213dt'.TSeq_gi, 'blastp100213dt'.TSeq_accver,'blastp100213'.field11,'blastp100213dt'.TSeq_orgname,'blastp100213lineagesnew'.field4,"BLAST origin",TSeq_sequence from blastp100213dt
left outer join blastp100213 on blastp100213dt.TSeq_gi=blastp100213.field13
left outer join blastp100213bksrch on blastp100213dt.TSeq_gi=blastp100213bksrch.field14
left outer join blastqueries on "Query Gi"=blastp100213.field1
left outer join blastp100213lineagesnew on blastp100213lineagesnew.field5=TSeq_taxid
Where blastp100213.field11 <1e-17 AND blastp100213.field1 != "221486279" AND blastp100213.field1 != "237833555"
OR blastp100213bksrch.field13="39812378" AND "BLAST origin"="RanBPM"
OR blastp100213bksrch.field13="12232469" AND "BLAST origin"="Rmnd5"
OR blastp100213bksrch.field13="8923557" AND "BLAST origin"="TWA"
OR blastp100213bksrch.field13="31881798" AND "BLAST origin"="Muskelin"
OR blastp100213bksrch.field13="62953131" AND "BLAST origin"="MAEA"
OR blastp100213bksrch.field13="264681558" AND "BLAST origin"="WDR26"
OR blastp100213bksrch.field13="32526896" AND "BLAST origin"="Armc8"
OR blastp100213bksrch.field13="23111007" AND "BLAST origin"="C17orf39"

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
Group by TSeq_gi
)
left outer join plantgene on TSeq_gi like Seq_id_gi55
Where field4 like 'Viridiplantae' And Gene_commentary_accession21 not like ''
Group by Seq_interval_from,Seq_interval_to
)
Group by TSeq_gi
Order by TSeq_orgname,field11