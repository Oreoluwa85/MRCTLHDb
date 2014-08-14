select crapfam.query,ctlhpfam.query, lishpfam.query, field4,"BLAST origin",TSeq_accver, field11,TSeq_orgname, TSeq_gi, TSeq_sequence from
(
select field4,"BLAST origin",TSeq_accver, field11,TSeq_orgname, TSeq_gi, TSeq_sequence  from blastp100213totalhits
union
select Supergroup, "BLAST origin", Hit_accession, Hsp_evalue, Organism, "gi/id", "sequence" from table1withhitseqests
)
left outer join lishpfam on lishpfam.accession like TSeq_gi
left outer join ctlhpfam on ctlhpfam.accession like TSeq_gi
left outer join crapfam on crapfam.accession like TSeq_gi
where "BLAST origin" not like 'Armc8' and "BLAST origin" not like 'C17orf39'
group by TSeq_gi
order by crapfam.query,ctlhpfam.query, lishpfam.query