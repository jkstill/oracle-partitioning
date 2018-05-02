
prompt
prompt ## Table parts/subparts
prompt

break on table_name on partition_name

select table_name, partition_name, compression, compress_for, subpartition_name
from user_tab_subpartitions
order by partition_name, subpartition_position
/
