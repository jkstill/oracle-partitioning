
# test interval partitioning by date interval

## What we want to do:

 * interval partition by month/quarter
   * this eliminates the need for any manual partition creation

## What we are unsure of

 * if numtoyminterval() is completely trustworthy for this use
   * see date-interval-oops.sql for examples of numtoyminterval() doing something different than what may be expected
 

## Test procedure

 Create a table spanning parts of 3 years - 2014-12-31 through 2017-12-31

 There will be tests for both monthly and quarterly partitions.

 One row will be created for each day in the range.

 Following data creation the low and high values will be examined per partition to ensure they are as expected.

 Testing in this manner ensures the following:

 * end/beginning of year transitions
 * two full years of data (including Leap Year)

## Testing Procedure

 * edit setup.sql and set the following:
   * define months_per_partition=1 -- 1 for monthly, 3 for quarterly
   * define v_tablespace='TBSLARGE'

 Run the tests

 @@create
 @@get_parts
 @@verify

## Sample Output

 This is for a quarterly test

```SQL
 
 JKSTILL@p1 > @get_parts

 PARTITION_NAME                 HIGH_VALUE                                                                       TABLESPACE_NAME
 ------------------------------ -------------------------------------------------------------------------------- --------------------
 P0                             TIMESTAMP' 2015-01-01 00:00:00'                                                  TBSLARGE
 SYS_P3280                      TIMESTAMP' 2015-04-01 00:00:00'                                                  TBSLARGE
 SYS_P3281                      TIMESTAMP' 2015-07-01 00:00:00'                                                  TBSLARGE
 SYS_P3282                      TIMESTAMP' 2015-10-01 00:00:00'                                                  TBSLARGE
 SYS_P3283                      TIMESTAMP' 2016-01-01 00:00:00'                                                  TBSLARGE
 SYS_P3284                      TIMESTAMP' 2016-04-01 00:00:00'                                                  TBSLARGE
 SYS_P3285                      TIMESTAMP' 2016-07-01 00:00:00'                                                  TBSLARGE
 SYS_P3286                      TIMESTAMP' 2016-10-01 00:00:00'                                                  TBSLARGE
 SYS_P3287                      TIMESTAMP' 2017-01-01 00:00:00'                                                  TBSLARGE
 SYS_P3328                      TIMESTAMP' 2017-04-01 00:00:00'                                                  TBSLARGE
 SYS_P3329                      TIMESTAMP' 2017-07-01 00:00:00'                                                  TBSLARGE
 SYS_P3330                      TIMESTAMP' 2017-10-01 00:00:00'                                                  TBSLARGE
 SYS_P3331                      TIMESTAMP' 2018-01-01 00:00:00'                                                  TBSLARGE
 
 13 rows selected.


 JKSTILL@p1 > @verify
 2015-01-01 00:00:00->  low: 2014-12-31 high: 2014-12-31
 2015-04-01 00:00:00->  low: 2015-01-01 high: 2015-03-31
 2015-07-01 00:00:00->  low: 2015-04-01 high: 2015-06-30
 2015-10-01 00:00:00->  low: 2015-07-01 high: 2015-09-30
 2016-01-01 00:00:00->  low: 2015-10-01 high: 2015-12-31
 2016-04-01 00:00:00->  low: 2016-01-01 high: 2016-03-31
 2016-07-01 00:00:00->  low: 2016-04-01 high: 2016-06-30
 2016-10-01 00:00:00->  low: 2016-07-01 high: 2016-09-30
 2017-01-01 00:00:00->  low: 2016-10-01 high: 2016-12-31
 2017-04-01 00:00:00->  low: 2017-01-01 high: 2017-03-31
 2017-07-01 00:00:00->  low: 2017-04-01 high: 2017-06-30
 2017-10-01 00:00:00->  low: 2017-07-01 high: 2017-09-30
 2018-01-01 00:00:00->  low: 2017-10-01 high: 2017-12-31

```

# Files

 * connect.sql
   * set the database connection
 * create.sql
   * run all scripts
 * date-interval-oops.sql
   * demo of things you may not expect with numtoyminterval()
 * get_parts.sql
   * display test table partition info
 * indexes.sql
   * create any indexes
 * insert.sql
   * create the test data
 * logsetup.sql
   * defines logfile for data creation
 * setup.sql
   * set test parameters
 * tables.sql
   * creates the test table
 * verify.sql
   * displays the high_value for the partition
   * displays the min() and max() values for the date data

