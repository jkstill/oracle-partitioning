

drop table partstest purge;

create table partstest ( id number, pk number, d1 timestamp )
partition by range (d1) interval(numtoyminterval(&months_per_partition, 'month'))
(
   partition p0 values less than (to_date('2015-01-01','yyyy-mm-dd')) tablespace &&v_tablespace
)
tablespace &&v_tablespace
nologging
/


