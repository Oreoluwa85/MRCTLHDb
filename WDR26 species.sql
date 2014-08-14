SELECT * FROM
(
SELECT * FROM
(
select distinct 'WDR26backsearch'.field1, 'WDR26backsearch'.field12, 'WDR26backsearched'.Tseq_orgname,'WDR26backsearched'.TSeq_gi 
from WDR26backsearch
join 'WDR26backsearched' on 'WDR26backsearch'.field1='WDR26backsearched'."ref"
where (WDR26backsearch.field2 like '%NP_079436.4%')
OR (WDR26backsearch.field2 like '%NP_009891.1%')
order by CASE
	when 'WDR26backsearch'.field1 like '%NP%' THEN 3
	when 'WDR26backsearch'.field1 like '%XP%' THEN 2
	when 'WDR26backsearch'.field1 like '%gb%' THEN 1
	else 0
END
)
group by Tseq_orgname
)
Join 'specieslineages' on TSeq_orgname='specieslineages'.Organism