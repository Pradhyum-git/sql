-- ==================================================
--                 Date & Time Functions
--              1)Part Extraction
--              2)Formatting
--              3)Arithmetic Calculations
-- ==================================================

-- Now(): returns current timestamp 
SELECT NOW() ;

-- CURRENT_TIMESTAMP() : returns same as NOW()
SELECT CURRENT_TIMESTAMP();

-- =====================================
--       Part Extraction
-- =====================================
USE salesdb;
SELECT 
creationtime
FROM
orders;


--  DAY() : return day from the timestamp
SELECT 
creationtime,
DAY(creationtime)
FROM
orders;

-- Month() -- returns month from the timestamp
SELECT 
creationtime,
MONTH(creationtime) AS month
FROM
orders;

-- Year() : returns year from the datetime
SELECT 
creationtime,
YEAR(creationtime) AS year
FROM
orders;

-- DAYOFWEEK() :
SELECT 
creationtime,
DAYOFWEEK(creationtime) AS dayofweek
FROM
orders;

-- DAYOFYEAR() : day out of 365 days
SELECT 
creationtime,
DAYOFYEAR(creationtime) AS dayofyear
FROM
orders;

-- WEEK() : returns week number from the year
SELECT 
creationtime,
WEEK(creationtime) AS weeknumber
FROM
orders;

-- DAYNAME() : returns day name from week(sunday....saturday)
SELECT 
creationtime,
DAYNAME(creationtime) AS dayname
FROM
orders;

-- monthname() : month name such as january...decemeber
SELECT 
creationtime,
MONTHNAME(creationtime) AS monthname
FROM
orders;


-- quarter() : quarter of the year
SELECT 
creationtime,
QUARTER(creationtime) AS quarter
FROM
orders;

-- hour() 
SELECT 
creationtime,
HOUR(creationtime) AS hour
FROM
orders;

-- minutes() :
SELECT 
creationtime,
MINUTE(creationtime) AS minute
FROM
orders;

-- last_day() : return the last day of the month
SELECT 
creationtime,
LAST_DAY(creationtime) AS last_day_of_month
FROM
orders;



-- 2)Formatting

-- Common format specifiers:
-- %Y    : 4-digit year (2025)
-- %y    : 2-digit year (25)
-- %M    : Full month name (August)
-- %m    : Month number (08)
-- %D    : Day with suffix (23rd)
-- %d    : Day number (23)
-- %H    : Hour 24-format (14)
-- %h    : Hour 12-format (02)
-- %i    : Minutes (05)
-- %s    : Seconds (30)
-- %W    : Weekday name (Saturday)
-- %p    : am or pm
SELECT
creationtime,
DATE_FORMAT(creationtime,'%Y-%M-%D')
FROM
orders;

-- 
SELECT
creationtime,
DATE_FORMAT(creationtime,'%Y/%m/%d %H-%i-%s')
FROM
orders;


SELECT
creationtime,
DATE_FORMAT(creationtime,'%d/%m/%y')
FROM
orders;

SELECT
creationtime,
DATE_FORMAT(creationtime,'%d/%m/%y %h:%i %p')
FROM
orders;

-- String conversion to date
SELECT
STR_TO_DATE('2025/4/21','%Y/%m/%d ');

SELECT
STR_TO_DATE('20-4-2025','%d-%m-%Y ');


SELECT
STR_TO_DATE('23rd September 2025','%D %M %Y');



-- Arithmetic Calculations

-- DATEDIFF() : difference between the two dates
SELECT
DATEDIFF('2025-02-25','2025-02-10');

SELECT
TIMEDIFF('2025-02-25 1:00:00','2025-02-15 12:00:00');

-- DATEADD() : adds date by interval
SELECT
Now(),
DATE_ADD(NOW(),INTERVAL 10 YEAR);

SELECT 
NOW(),
DATE_ADD(NOW(),INTERVAL 10 DAY);

-- DATESUB() : subtracts  date by interval  
SELECT
NOW(),
DATE_SUB(NOW(),INTERVAL 10 DAY);

