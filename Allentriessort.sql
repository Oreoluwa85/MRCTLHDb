SELECT * FROM
(
select field14,field20,field26,field16,field24,field32 from allentriesfound
Where field4="5est"
order 
by field16 DESC,field26 DESC,CASE
	when field20 like '%NP%' THEN 3
	when field20 like '%XP%' THEN 2
	else 1 
END
)
group by field26,field16