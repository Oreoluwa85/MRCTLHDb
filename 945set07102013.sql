select "Protein Tag",Field5, Hit_accession, "LisH start" from set945codesandseqswithjgi
where "Protein Tag" like 'RD%'
OR "Protein Tag" like 'MA%'
order by "LisH start"