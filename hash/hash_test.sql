
select  dbms_rowid.rowid_relative_fno(rowid), count(*)
from hash_test
group by dbms_rowid.rowid_relative_fno(rowid)
/

select stddev(key_count)
from (
	select  dbms_rowid.rowid_relative_fno(rowid), count(*) key_count
	from hash_test
	group by dbms_rowid.rowid_relative_fno(rowid)
)
/

