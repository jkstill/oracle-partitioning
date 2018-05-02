

set serveroutput off

set echo on

select   distinct name, hkey
from hash_sp_test 
where name = 'NAME2'
	and hkey = 10
and rownum < 2
/

set echo off


