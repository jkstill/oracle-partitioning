
-- unusable index test - reclaim space

drop table uitest purge;

create table uitest (
	mydate date not null,
	id integer,
	first_name varchar2(30),
	last_name varchar2(30)
)
partition by range (mydate)
subpartition by hash(id) subpartitions 4
(
	partition uitest_p_20121202 values less than ( to_date('20121203','yyyymmdd')) ,
	partition uitest_p_20121203 values less than ( to_date('20121204','yyyymmdd')) ,
	partition uitest_p_20121204 values less than ( to_date('20121205','yyyymmdd')) ,
	partition uitest_p_overflow values less than (maxvalue)
)
nologging
tablespace alloctest_u
/


