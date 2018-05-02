
-- insert rows to comp02 partition, maxvalue subpartition

insert into lrpart (transid,company,transdate) values(1,'comp01',to_date('20170101','yyyymmdd'));
insert into lrpart (transid,company,transdate) values(2,'comp01',to_date('20170102','yyyymmdd'));
insert into lrpart (transid,company,transdate) values(3,'comp01',to_date('20170103','yyyymmdd'));

insert into lrpart (transid,company,transdate) values(4,'comp02',to_date('20180101','yyyymmdd'));
insert into lrpart (transid,company,transdate) values(5,'comp02',to_date('20180102','yyyymmdd'));
insert into lrpart (transid,company,transdate) values(6,'comp02',to_date('20180103','yyyymmdd'));

commit;

