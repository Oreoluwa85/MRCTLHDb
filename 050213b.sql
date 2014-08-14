SELECT * FROM
(
select * from
(
SELECT mrctlhbacksearch.field2,"Query Gi",'blastp040213'.field5,'blastp040213'.field1,'blastp040213'.field2,'blastpsearches'.field11,'blastqueries'."BLAST origin",'blastp040213'.field8 from blastp040213
join blastpsearches on 'blastp040213'.field1='blastpsearches'.field13
left outer join blastqueries on 'blastpsearches'.field14="Query Gi"
left outer join mrctlhbacksearch on 'blastpsearches'.field13='mrctlhbacksearch'.field1
Where blastpsearches.field11 <1
OR "Query Gi"=mrctlhbacksearch.field2
order 
by 'blastpsearches'.field11 DESC,'blastp040213'.field5 DESC,CASE
	when 'blastpsearches'.field2 like '%NP%' THEN 3
	when 'blastpsearches'.field2 like '%XP%' THEN 2
	else 1 
END
)
group by field5,"BLAST origin"
)
order by "field11"