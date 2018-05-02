
alter table lrpart
merge partitions comp01, comp02
into partition comps compress
update global indexes
/



