select set945codesandseqs.field4,Table1.Organism,set945codesandseqs.field5,set945codesandseqs.field7
from set945codesandseqs,Table1
where set945codesandseqs.field4 like 'MA%'
AND set945codesandseqs.field2 like table1.Hit_id
order by Table1.Organism