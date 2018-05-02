
set serveroutput off

--set echo on

select   distinct name, hkey
from hash_sp_test 
	subpartition for ('NAME2',6)
/

set echo off

@showplan_last

