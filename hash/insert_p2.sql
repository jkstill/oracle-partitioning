
-- insert 1000 rows into partition name_p2

insert into hash_sp_test
select 'NAME2' , mod(rownum,16)+1 hkey, rownum
from dba_objects
where rownum <= 3000
/

commit;


