
-- insert into NAME_P2 part

insert into hash_sp_test
select 'NAME' || to_char(mod(rownum,4)+1) name, mod(rownum,16)+1 hkey, rownum
from dba_objects
/

commit;


