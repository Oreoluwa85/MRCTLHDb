SELECT * FROM
(
select * from
(
SELECT mrctlhbacksearch.field13,"Query Gi",'blastp040213'.field5,'blastp040213'.field1,'blastp040213'.field2,'blastpsearches'.field11,'blastqueries'."BLAST origin",'blastp040213'.field8 from blastp040213
left outer join blastpsearches on 'blastp040213'.field1='blastpsearches'.field13
left outer join blastqueries on 'blastpsearches'.field14="Query Gi"
left outer join mrctlhbacksearch on 'blastpsearches'.field13='mrctlhbacksearch'.field1
Where blastpsearches.field11 <1e-15
OR mrctlhbacksearch.field13="39812378" AND "BLAST origin"="RanBPM"
OR mrctlhbacksearch.field13="12232469" AND "BLAST origin"="Rmnd5"
OR mrctlhbacksearch.field13="8923557" AND "BLAST origin"="TWA"
OR mrctlhbacksearch.field13="31881798" AND "BLAST origin"="Muskelin"
OR mrctlhbacksearch.field13="62953131" AND "BLAST origin"="MAEA"
OR mrctlhbacksearch.field13="264681558" AND "BLAST origin"="WDR26"
OR mrctlhbacksearch.field13="32526896" AND "BLAST origin"="Armc8"
OR mrctlhbacksearch.field13="23111007" AND "BLAST origin"="C17orf39"
order 
by 'blastpsearches'.field11 DESC,'blastp040213'.field5 DESC,CASE
	when 'blastpsearches'.field2 like '%NP%' THEN 3
	when 'blastpsearches'.field2 like '%XP%' THEN 2
	else 1 
END
)
group by field5,"BLAST origin"
)
order by "BLAST origin","field11"