SELECT Supergroup,Organism, "BLAST origin",
  count(CASE WHEN "BLAST origin" like 'TWA' THEN "BLAST origin" END) AS TWA1,
  count(CASE WHEN "BLAST origin" like 'RanBPM' THEN "BLAST origin" END) AS RanBPM,
  count(CASE WHEN "BLAST origin" like 'Rmnd5' THEN "BLAST origin" END) AS Rmnd5,
  count(CASE WHEN "BLAST origin" like 'MAEA' THEN "BLAST origin" END) AS MAEA,
  count(CASE WHEN "BLAST origin" like 'Muskelin' THEN "BLAST origin" END) AS Muskelin,
  count(CASE WHEN "BLAST origin" like 'WDR26' THEN "BLAST origin" END) AS WDR26,
  count(CASE WHEN "BLAST origin" like 'Armc8' THEN "BLAST origin" END) AS Armc8,
  count(CASE WHEN "BLAST origin" like 'c17orf39' THEN "BLAST origin" END) AS c17orf39
FROM table1withhitseqests
where TaxIDs like '%1037528%'
or TaxIDs like '353154%'
or TaxIDs like '353153%'
or TaxIDs like '352914%'
or TaxIDs like '333668%'
or TaxIDs like '284813%'
or TaxIDs like '126793%'
or TaxIDs like '73239%'
or TaxIDs like '72359%'
or TaxIDs like '36329%'
or TaxIDs like '7159%'
or TaxIDs like '6334%'
or TaxIDs like '6279%'
or TaxIDs like '6182%'
or TaxIDs like '5875%'
or TaxIDs like '5874%'
or TaxIDs like '5855%'
or TaxIDs like '5851%'
or TaxIDs like '5693%'
and Supergroup not like 'Bacteria'
group by "Organism"
