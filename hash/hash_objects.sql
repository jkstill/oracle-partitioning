with subpart as (
	select   spt.name, spt.hkey, subobject_name
	from hash_sp_test spt
	join user_objects u on u.object_id = dbms_rowid.rowid_object(spt.rowid)
	where spt.name = 'NAME2'
		and spt.hkey = 10
		and u.object_name = 'HASH_SP_TEST'
	and rownum < 2
)
select partition_name
from user_tab_subpartitions uts
join subpart sp on sp.subobject_name = uts.subpartition_name
where uts.table_name = 'HASH_SP_TEST'
/
