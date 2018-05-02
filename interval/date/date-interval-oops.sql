
-- will numtoyminterval() work as we expect for interval partitioning?
--
-- examples using a leap year
-- intervals in general do not always do what we want

-- we would like this to return 2016-03-31, but it does not
select dt, dt+numtoyminterval(1,'month') from (select to_date('2016-02-29','yyyy-mm-dd') dt from dual )
/

-- using add_months does what we want
select dt, add_months(dt,1) from (select to_date('2016-02-29','yyyy-mm-dd') dt from dual )
/

-- this doesn't work as it is trying to create 2016-04-31
select interval '1' month + (cast(to_date('2016-03-31','yyyy-mm-dd')  as timestamp)) from dual
/

-- this does work
select interval '1' month + (cast(to_date('2016-03-30','yyyy-mm-dd')  as timestamp)) from dual
/
