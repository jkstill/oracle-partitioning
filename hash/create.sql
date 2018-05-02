
set echo on

drop table hash_test;

create table hash_test( key number(12) )
partition by hash(key)
( 
	partition hash_test_p1 , --tablespace hash_test_1,
	partition hash_test_p2 , -- tablespace hash_test_2,
	partition hash_test_p3 , -- tablespace hash_test_3,
	partition hash_test_p4  -- tablespace hash_test_4
	--partition hash_test_p5 tablespace hash_test_5,
	--partition hash_test_p6 tablespace hash_test_6,
	--partition hash_test_p7 tablespace hash_test_7,
	--partition hash_test_p8 tablespace hash_test_8
);


create unique index hash_test_pk on hash_test(key) local
store in ( 
	hash_test_idx_1, hash_test_idx_2
	--, hash_test_idx_3, hash_test_idx_4
	--, hash_test_idx_5, hash_test_idx_6
	--, hash_test_idx_7, hash_test_idx_8
)
/

alter table hash_test add constraint hash_test_pk
primary key(key)
/


set echo off


