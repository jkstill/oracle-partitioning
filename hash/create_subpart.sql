

set echo on

drop table hash_sp_test purge;

create table hash_sp_test( name varchar2(20), hkey number(12) , test_value integer)
partition by list(name)
subpartition by hash(hkey)
subpartitions 4
( 
	partition name_p1 values ('NAME1'),
	partition name_p2 values ('NAME2'),
	partition name_p3 values ('NAME3'),
	partition name_p4 values ('NAME4')
)
/


create index hash_sp_test_idx on hash_sp_test(name,hkey) local
/

@@set_prefs
@@get_prefs

set echo off


