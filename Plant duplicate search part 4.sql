select * from plantdups
left outer join plantgene2 on TSeq_gi like ProteinGi
where field4 like 'Viridiplantae' AND Gene_Acc not like ''
Group by Prot_Acc
order by TSeq_orgname, "BLAST origin"