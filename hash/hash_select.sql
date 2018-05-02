
/*

  1  select distinct hkey
  2* from hash_sp_test  partition (NAME_P2)
13:38:47 oravm01.jks.com - jkstill@oravm1 SQL> /

      HKEY
----------
         6
        10
         2
        14

4 rows selected.

*/

set serveroutput off

select count(*) spcount
from hash_sp_test partition (NAME_P2)
where name = 'NAME2'
	-- and hkey in (2,6,10,14)
/

--@showplan_last

