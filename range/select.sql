
set serveroutput off

--determine the partition to use without knowing partition name

--select count(*) from part_test partition for (9000)
select count(*) from part_test partition (part_test_p2)
/

@showplan_last



