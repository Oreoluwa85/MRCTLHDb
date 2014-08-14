select * from
(
select * from
(
select 'blastp100213dt'.TSeq_gi, 'blastp100213dt'.TSeq_accver,'blastp100213'.field11,'blastp100213dt'.TSeq_orgname,"BLAST origin",TSeq_sequence from blastp100213dt
left outer join blastp100213 on blastp100213dt.TSeq_gi=blastp100213.field13
left outer join blastqueries on "Query Gi"=blastp100213.field1
order 
by 'blastp100213'.field11 DESC,'blastp100213dt'.TSeq_orgname DESC,CASE
	when 'blastp100213'.field2 like '%NP%' THEN 3
	when 'blastp100213'.field2 like '%XP%' THEN 2
	else 1 
END
)
Group by TSeq_orgname,"BLAST origin"
)
Order by TSeq_orgname,field11