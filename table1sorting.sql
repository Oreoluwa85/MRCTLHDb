select  "BLAST origin",Organism,Hit_accession From table1
Where Organism like '%saccharomyces%'
order by CASE
	when Hit_accession like '%NP%' THEN 1
	when Hit_accession like '%XP%' THEN 2
	else 3
END