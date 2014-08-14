select set109.field1,field26, field17, field32, field16 from set109
left outer join allentriesfound on set109.field2 like field26 || '%' and set109.field3 like field16
group by set109.field1
order by field16, field17, field32