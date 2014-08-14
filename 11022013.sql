select * from
(
select 'fig1bspecies'.field2,'blastp100213'.field2,"BLAST origin" from blastp100213
left outer join blastpretrieved on blastpretrieved.field1=blastp100213.field13
left outer join blastqueries on "Query Gi"=blastp100213.field1
join fig1bspecies on blastpretrieved.field4=fig1bspecies.field1
order 
by 'blastp100213'.field11 DESC,'fig1bspecies'.field2 DESC,CASE
	when 'blastp100213'.field2 like '%NP%' THEN 3
	when 'blastp100213'.field2 like '%XP%' THEN 2
	else 1 
END
)
Group by field2,"BLAST origin"