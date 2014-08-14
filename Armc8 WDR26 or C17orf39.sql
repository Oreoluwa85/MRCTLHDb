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

SELECT * FROM
(
select distinct 'c17orf39backsearch'.field1, 'c17orf39backsearch'.field12, 'c17orf39backsearched'.Tseq_orgname,'c17orf39backsearched'.TSeq_gi 
from c17orf39backsearch
join 'c17orf39backsearched' on 'c17orf39backsearch'.field1='c17orf39backsearched'."ref"
where (c17orf39backsearch.field2 like '%NP_076957.3%')
OR (c17orf39backsearch.field2 like '%NP_009663.1%')
order by CASE
	when 'c17orf39backsearch'.field1 like '%NP%' THEN 3
	when 'c17orf39backsearch'.field1 like '%XP%' THEN 2
	when 'c17orf39backsearch'.field1 like '%gb%' THEN 1
	else 0
END
)
group by Tseq_orgname

SELECT * FROM
(
select distinct 'armc8backsearch'.field1, 'armc8backsearch'.field12, 'armc8backsearched'.Tseq_orgname,'armc8backsearched'.TSeq_gi 
from armc8backsearch
join 'armc8backsearched' on 'armc8backsearch'.field1='armc8backsearched'."ref"
where (armc8backsearch.field2 like '%NP_001253971%')
OR (armc8backsearch.field2 like '%NP_012247.3%')
order by CASE
	when 'armc8backsearch'.field1 like '%NP%' THEN 3
	when 'armc8backsearch'.field1 like '%XP%' THEN 2
	when 'armc8backsearch'.field1 like '%gb%' THEN 1
	else 0
END
)
group by Tseq_orgname