select * from blastp100213totalhits
left outer Join blastp100213lineagesnew on blastp100213totalhits.TSeq_orgname=blastp100213lineagesnew.'field6'
where blastp100213totalhits.field11 < 1e-30
AND TSeq_orgname not like 'Guillardia theta'
AND TSeq_orgname not like 'Aspergillus niger'
AND TSeq_orgname not like 'Cryptococcus neoformans var. grubii H99'
AND TSeq_orgname not like 'Agaricus bisporus var. burnettii JB137-S8'
AND TSeq_orgname not like 'Candida glabrata'
AND TSeq_orgname not like 'Hordeum vulgare subsp. vulgare'
AND TSeq_orgname not like 'Neurospora crassa'
AND TSeq_orgname not like 'Saccharomyces cerevisiae x Saccharomyces kudriavzevii VIN7'
AND blastp100213totalhits.field4 not like ''
group by field14
order by TSeq_orgname