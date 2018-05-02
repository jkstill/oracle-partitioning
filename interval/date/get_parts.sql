
set line 200
set pagesize 100

col partition_name format a30
col tablespace_name format a20

select partition_name, high_value, tablespace_name
from user_tab_partitions
where table_name = 'PARTSTEST'
order by 1
/
