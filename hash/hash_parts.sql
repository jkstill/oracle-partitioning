select table_name, partition_name, subpartition_name, subpartition_position
from user_tab_subpartitions
where table_name = 'HASH_SP_TEST'
/
