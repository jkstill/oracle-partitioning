

set line 200 trimspool on
set pagesize 60

col table_name format a15 head 'TABLE NAME'
col index_name format a20 head 'INDEX NAME'
col partition_name format a10 head 'PARTITION|NAME'
col subpartition_name format a15 head 'SUBPARTITION|NAME'
col num_rows format 99999999 head 'NUM|ROWS'
col stale_stats format a5 head 'STALE|STATS'
col global_stats format a6 head 'GLOBAL|STATS'
col last_analyzed format a21 head 'LAST ANALYZED'

alter session set nls_date_format = 'yyyy-mm-dd hh24:mi:ss';

select table_name
	,partition_name
	, subpartition_name
	, global_stats
	, last_analyzed
	, num_rows
	, stale_stats
from dba_tab_statistics
where owner = 'JKSTILL'
and table_name = 'HASH_SP_TEST'
and partition_name = 'NAME_P2'
order by table_name, partition_position, subpartition_position 
/

select table_name
	, index_name
	, partition_name
	, subpartition_name
	, global_stats
	, last_analyzed
	, num_rows
	, stale_stats
from dba_ind_statistics
where owner = 'JKSTILL'
and table_name = 'HASH_SP_TEST'
and partition_name = 'NAME_P2'
order by table_name, index_name, partition_position, subpartition_position
/

