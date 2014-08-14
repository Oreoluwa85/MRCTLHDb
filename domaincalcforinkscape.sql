select MA1, set922details."BLAST origin", set922details."gi/id", set922details.Supergroup, Hit_len, set922details.Organism,  table1lishpfam.'start'*0.0707, (table1lishpfam.'end'-table1lishpfam.'start')*0.0707, table1ctlhpfam.'start'*0.0707, (table1ctlhpfam.'end'-table1ctlhpfam.'start')*0.0707, table1crapfam.'start'*0.0707, (table1crapfam.'end'-table1crapfam.'start')*0.0707 from set922details
left outer join table1lishpfam on table1lishpfam.accession like set922details."gi/id"
left outer join table1ctlhpfam on table1ctlhpfam.accession like set922details."gi/id"
left outer join table1crapfam on table1crapfam.accession like set922details."gi/id"
left outer join table1 on table1."gi/id" like set922details."gi/id"
group by set922details."gi/id"
order by set922details.Organism