
drop table partstats;

set echo on

create table partstats
(
	pk number not null,
	datestamp date not null,
	client_id number not null
)
partition by range (datestamp)
subpartition by list(client_id)
subpartition template  (
	  subpartition client_1 values (1) tablespace bh01,
	  subpartition client_2 values (2) tablespace bh01,
	  subpartition client_3 values (3) tablespace bh01,
	  subpartition client_4 values (4) tablespace bh01
)
(
	partition p_20120101 values less than ( to_date('20120102','yyyymmdd')) ,
	partition p_20120102 values less than ( to_date('20120103','yyyymmdd')) ,
	partition p_20120103 values less than ( to_date('20120104','yyyymmdd')) ,
	partition p_20120104 values less than ( to_date('20120105','yyyymmdd')) 
)
/




