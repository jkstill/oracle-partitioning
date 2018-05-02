
create index UITEST_IDX_01
on uitest(mydate, id) local
tablespace alloctest_u
pctfree 0
parallel 4
nologging
/


