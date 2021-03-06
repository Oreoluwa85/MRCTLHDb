select blastp100213lineagesnew.'field5', blastp100213totalhits.* from blastp100213totalhits
left outer Join blastp100213lineagesnew on blastp100213totalhits.TSeq_orgname=blastp100213lineagesnew.'field6'
WHERE
(
TSeq_orgname like 'Allomyces%'
Or TSeq_orgname like 'Amphimedon%'
Or TSeq_orgname like 'Bigelow%'
Or TSeq_orgname like 'Caenorhabditis elegans%'
Or TSeq_orgname like 'Capsa%'
Or TSeq_orgname like 'Chlamydomonas%'
Or TSeq_orgname like 'Chlorella%'
Or TSeq_orgname like 'Coprinopsis%'
Or TSeq_orgname like 'Danio%'
Or TSeq_orgname like 'Dictyostelium discoideum%'
Or TSeq_orgname like 'Drosophila melanogaster%'
Or TSeq_orgname like 'Ectocarpus%'
Or TSeq_orgname like 'Emiliania%'
Or TSeq_orgname like 'Guillardia%'
Or TSeq_orgname like 'Homo%'
Or TSeq_orgname like 'Hydra%'
Or TSeq_orgname like 'Monosiga%'
Or TSeq_orgname like 'Naegleria%'
Or TSeq_orgname like 'Paramecium tetraurelia%'
Or TSeq_orgname like 'Phytophthora infestans%'
Or TSeq_orgname like 'Physcomitrella%'
Or TSeq_orgname like 'Pleurobrachia%'
Or TSeq_orgname like 'Polysphondylium%'
Or TSeq_orgname like 'Populus%'
Or TSeq_orgname like 'Rhizophagus%'
Or TSeq_orgname like 'Saccharomyces cerevisiae S288c%'
Or TSeq_orgname like 'Saccoglossus%'
Or TSeq_orgname like 'Salpingoeca sp. ATCC 50818%'
Or TSeq_orgname like 'Schizosaccharomyces pombe%'
Or TSeq_orgname like 'Spizellomyces%'
Or TSeq_orgname like 'Tetrahymena%'
Or TSeq_orgname like 'Theileria parva strain Muguga%'
Or TSeq_orgname like 'Toxoplasma gondii ME49%'
Or TSeq_orgname like 'Ustilago maydis%'
Or TSeq_orgname like 'Vitis%'
Or TSeq_orgname like 'Zea Mays%'
)
AND 
(
"BLAST origin" like 'R%' 
OR "BLAST origin" like 'M%'
OR "BLAST origin" like 'T%'
)
AND
(
blastp100213lineagesnew.'field4' like 'SAR'
)
group by TSeq_orgname,field4,"BLAST origin"
order by field4,"BLAST origin"