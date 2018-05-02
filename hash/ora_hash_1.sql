select distinct hkey, ora_hash(hkey,3,0) + 1  hash
from hash_sp_test
--where  name = 'NAME2'
--and rownum <= 256
/
