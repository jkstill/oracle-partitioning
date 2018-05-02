
set serveroutput off

--set echo on

select   distinct name, hkey
from hash_sp_test 
	partition for ('NAME2')
/

set echo off

@showplan_last

