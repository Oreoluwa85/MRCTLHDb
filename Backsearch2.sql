select 'armc8backsearch'.field1, 'armc8backsearch'.field12, 'armc8backsearched'.field5,'armc8backsearched'.field1 
from armc8backsearch
join 'armc8backsearched' on 'armc8backsearch'.field1='armc8backsearched'.field6
where armc8backsearch.field2 like '%NP_001253971%'
group by 'armc8backsearched'.field5
order by armc8backsearch.field12
