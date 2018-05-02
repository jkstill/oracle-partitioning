
insert /*+ append */ into uitest (mydate,id,first_name,last_name)
select to_date('2012-12-02','yyyy-mm-dd')
	, rownum
	, object_name
	, object_name
from dba_objects
/

commit;

insert /*+ append */ into uitest (mydate,id,first_name,last_name)
select to_date('2012-12-03','yyyy-mm-dd')
	, rownum
	, object_name
	, object_name
from dba_objects
/

commit;

insert /*+ append */ into uitest (mydate,id,first_name,last_name)
select to_date('2012-12-04','yyyy-mm-dd')
	, rownum
	, object_name
	, object_name
from dba_objects
/

commit;

insert /*+ append */ into uitest (mydate,id,first_name,last_name)
select to_date('2012-12-05','yyyy-mm-dd')
	, rownum
	, object_name
	, object_name
from dba_objects
/

commit;



