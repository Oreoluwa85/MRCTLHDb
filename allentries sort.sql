select  field24 From allentriesfound
Where field32 <1e-5
order by CASE
	when field24 like '%NP%' THEN 1
	when field24 like '%XP%' THEN 2
	else 3
END