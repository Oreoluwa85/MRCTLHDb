select *, COUNT(LisH), COUNT(CTLH), COUNT(CRA), COUNT(*) from
(
select MA1, "BLAST origin", "gi/id", Organism, Supergroup, table1lishpfam.query as LisH, table1ctlhpfam.query as CTLH, table1crapfam.query as CRA from set922details
left outer join table1lishpfam on table1lishpfam.accession like set922details."gi/id"
left outer join table1ctlhpfam on table1ctlhpfam.accession like set922details."gi/id"
left outer join table1crapfam on table1crapfam.accession like set922details."gi/id"
group by "gi/id"
)
group by Supergroup