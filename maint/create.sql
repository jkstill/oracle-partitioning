

drop table lrpart purge;

create table lrpart (
	transid number(6) not null,
	company varchar2(10) not null,
	transdate date not null
)
partition by list(company)
subpartition by range(transdate)
subpartition template (
	subpartition archive values less than (to_date('201401','yyyymm')),
	subpartition s2014 values less than (to_date('201501','yyyymm')),
	subpartition s2015 values less than (to_date('201601','yyyymm')),
	subpartition maxval values less than (maxvalue)
)
(
	 partition DUMMY values('DUMMY')
)
/

-- global non-partitoned index for PK
create index lrpart_pk_idx on lrpart(transid);
alter table lrpart add constraint lrpart_pk primary key (transid);


-- local partitioned index
create index lrpart_locpart_date_idx on lrpart(transdate) local;

-- global partitioned index
create index lrpart_glbpart_date_idx on lrpart(transdate,company,transid)
global partition by range (transdate)
(
	partition archive values less than (to_date('201401','yyyymm')),
	partition s2014 values less than (to_date('201501','yyyymm')),
	partition s2015 values less than (to_date('201601','yyyymm')),
	partition maxval values less than (maxvalue)
)
/


