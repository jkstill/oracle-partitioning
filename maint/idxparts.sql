


prompt
prompt ## Global Non-Partitioned Indexes
prompt

select index_name, compression, status
from user_indexes
where table_name = 'LRPART'
and partitioned = 'NO'
/

prompt
prompt ## Local Partitioned Indexes
prompt

break on index_name

select s.index_name, s.partition_name, s.subpartition_name, s.compression, s.status
from user_ind_subpartitions s, user_indexes i
where i.index_name = s.index_name
and i.table_name = 'LRPART'
order by index_name, partition_name, subpartition_position
/

prompt
prompt ## Global Partitioned Indexes
prompt

break on index_name on partition_name

select p.index_name, p.partition_name, p.compression, p.status
from user_ind_partitions p, user_indexes i
where i.index_name = p.index_name
and i.table_name = 'LRPART'
and i.index_name not in (select index_name from user_ind_subpartitions)
order by index_name, partition_name
/
