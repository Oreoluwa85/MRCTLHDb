SELECT min(field5,"BLAST origin"),"BLAST origin",field2 FROM
(
SELECT 'blastp040213'.field5,'blastp040213'.field1,'blastp040213'.field2,'blastpsearches'.field11,'blastqueries'."BLAST origin" from blastp040213
join blastpsearches on 'blastp040213'.field1='blastpsearches'.field13
left outer join blastqueries on 'blastpsearches'.field14="Query Gi"
Where field11 <1e-3
order 
by 'blastpsearches'.field11,'blastp040213'.field5,CASE
	when 'blastpsearches'.field2 like '%NP%' THEN 1
	when 'blastpsearches'.field2 like '%XP%' THEN 2
	else 3
END
)