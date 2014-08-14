select set109.field1,Organism, "Hit_accession", Hsp_evalue, "BLAST Origin", "hex colour code", supergroup_colour.Supergroup   from set109
left outer join table1withhitseqests on set109.field2 like Organism || '%' and set109.field3 like "BLAST Origin"
join supergroup_colour on table1withhitseqests.Supergroup like supergroup_colour.Supergroup