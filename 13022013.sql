select * from allentries2
left outer join table1withhitseqests on field1="BLAST origin"
where Organism="Sus scrofa"
and
field2 like '%' || Organism || '%'

