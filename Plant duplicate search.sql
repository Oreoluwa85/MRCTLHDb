select * from blastp100213dt
left outer join blastp100213lineagesnew on TSeq_orgname like field6
where field9 like 'Plants'
Order by TSeq_orgname