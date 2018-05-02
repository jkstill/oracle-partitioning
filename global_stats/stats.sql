
set line 200
ttitle off

select  table_name, global_stats, last_analyzed, num_rows
from user_tables
where table_name='PARTSTATS'
order by 1, 2, 4 desc nulls last;

select  table_name, partition_name, global_stats, last_analyzed, num_rows
from user_tab_partitions
where table_name='PARTSTATS'
order by 1, 2, 4 desc nulls last;

select  table_name, subpartition_name, global_stats, last_analyzed, num_rows
from user_tab_subpartitions
where table_name='PARTSTATS'
order by 1, 2, 4 desc nulls last;

