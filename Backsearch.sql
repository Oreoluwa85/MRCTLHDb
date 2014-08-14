select distinct field1,field12 from armc8backsearch
where field2 like '%NP_001253971%'
OR field2 like '%NP_012247.3%'
group by field1