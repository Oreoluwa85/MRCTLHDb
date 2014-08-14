select MA1, "BLAST origin", "gi/id", Supergroup, Organism,  table1lishpfam.'start', table1lishpfam.'end', table1ctlhpfam.'start', table1ctlhpfam.'end', table1crapfam.'start', table1crapfam.'end' from set922details
left outer join table1lishpfam on table1lishpfam.accession like set922details."gi/id"
left outer join table1ctlhpfam on table1ctlhpfam.accession like set922details."gi/id"
left outer join table1crapfam on table1crapfam.accession like set922details."gi/id"
where  Organism like 'Schizosaccharomyces pombe'
or Organism like 'Aspergillus flavus NRRL3357'
or Organism like 'Saccharomyces cerevisiae'
or Organism like 'Ustilago maydis 521'
or Organism like 'Encephalitozoon cuniculi GB-M1'
or Organism like 'Allomyces macrogynus ATCC 38327'
or Organism like 'Spizellomyces punctatus DAOM BR117'
or Organism like 'Hydra magnipapillata'
or Organism like 'Drosophila melanogaster'
or Organism like 'Homo sapiens'
or Organism like 'Mus musculus'
or Organism like 'Saccoglossus kowalevskii'
or Organism like 'Trichoplax adhaerens'
or Organism like 'Monosiga brevicollis MX1'
or Organism like 'Capsaspora owczarzaki ATCC 30864'
or Organism like 'Dictyostelium discoideum AX4'
or Organism like 'Polysphondylium pallidum PN500'
or Organism like 'Naegleria gruberi strain NEG-M'
or Organism like 'Guillardia theta'
or Organism like 'Chlamydomonas reinhardtii'
or Organism like 'Ricinus communis'
or Organism like 'Physcomitrella patens subsp. patens'
or Organism like 'Emiliania huxleyi'
or Organism like 'Plasmodium knowlesi strain H'
or Organism like 'Theileria parva strain Muguga'
or Organism like 'Toxoplasma gondii ME49'
or Organism like 'Oxytricha trifallax'
or Organism like 'Ectocarpus siliculosus'
or Organism like 'Phytophthora infestans T30-4'
or Organism like 'Bigellowiella natans'
group by "gi/id"
order by "BLAST origin"