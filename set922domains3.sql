select Accession, table1.Organism, (CASE WHEN "Domainshort" like 'LisH' THEN "Domainshort" END) AS LisH,
(CASE WHEN "Domainshort" like 'CTLH' THEN "Domainshort" END) AS CTLH,
(CASE WHEN "Domainshort" like 'CRA' THEN "Domainshort" END) AS CRA,
(CASE WHEN "Domainshort" like 'RING' THEN "Domainshort" END) AS RING,
(CASE WHEN "Domainshort" like 'SPRY' THEN "Domainshort" END) AS SPRY,
(CASE WHEN "Domainshort" like 'Muskelin_N' THEN "Domainshort" END) AS Discoidin,
(CASE WHEN "Domainshort" like 'Kelch-typ_b-propeller' THEN "Domainshort" END) AS kelch_region from interproscans_of_922set
left outer join table1 on table1.Hit_accession like interproscans_of_922set.Accession || '%'
group by Accession