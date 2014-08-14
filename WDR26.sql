select distinct 'WDR26backsearch'.field1, 'WDR26backsearch'.field5
from WDR26backsearch
where WDR26backsearch.field2 like '%NP_079436.4%'
group by 'WDR26backsearch'.field1