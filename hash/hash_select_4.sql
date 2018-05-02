

set serveroutput off

--set echo on

select   distinct name, hkey
from hash_sp_test 
	where name = 'NAME2'
	and hkey = 6
/

set echo off

@showplan_last

