select MA1,NP1910671,"BLAST origin","gi/id",TaxIDs,Organism,Supergroup from set922
join table1
where replace(replace (Hit_accession,'_',''),'.','') like NP1910671