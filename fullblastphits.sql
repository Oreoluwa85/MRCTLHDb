select  field2,field11,"BLAST origin","Iteration_query-def" From blastpsearches
join blastqueries on 'blastqueries'."Query Gi"='blastpsearches'.field14
Where field11 <1e-5
order by CASE
	when field2 like '%NP%' THEN 1
	when field2 like '%XP%' THEN 2
	else 3
END
