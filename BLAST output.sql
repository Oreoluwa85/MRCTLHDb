select * from
(
select distinct field14,field12
from wdr26hits
order by field12
)
group by field14