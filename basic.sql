-------- * ALIAS *-----------
select sal as SALARY, comm as COMMISSION from emp;
-- using the AS keyword to give new naes to columns returned by your query is known as aliasing.

-- wrapping alias in parenthesis are more useful
select * from (
    select sal as SALARY, comm as COMMISSION from emp
) x 
where SALARY < 5000

-------- * CONCAT(MySQL) *-----------
select concat(ename, ' WORKS AS A ', job) as msg from emp where deptno = 10

-------- * CONDITIONAL LOGIC *-----------
select ename, sal,
        case when sal <= 2000 then 'UNDERPAID'
             when sal >= 4000 then 'OVERPAID'
             else 'OK'
        end as status
from emp

-- Result
-------------------------------------------
enmae  |    sal       |      status        |
-------------------------------------------
MIKE   |    1000      |      UNDERPAID
JAKE   |    5000      |      OVERPAID
TIMI   |    3000      |      OK

--------- *LIMIT* ------------
select * from emp limit 5
-- select first five rows

select ename, job from emp order by rand() limit 5
-- order by rand() returns table in random order and then returns first 5 rows

--------- * CHANGING NULL * ------------
select case when comm is null then 0
            else comm
        end 
from emp

--------- * SEARCHING PATTERN * ------------

--------- # IN operator # ----------
select enmae, job from emp where deptno in (10, 20, 30)
--------------------------
enmae  |    job          |
--------------------------
MIKE   |    MANAGER      |      
JAKE   |    CLERK        |      
TIMI   |    ANALYST      | 

--------- # LIKE operator (MySQL) # ----------

-- wildcard select all City contain 'es'
SELECT * FROM Customers WHERE City LIKE '%es%';

-- single character match
SELECT * FROM Customers WHERE City LIKE 'lo_don';

--------- * ORDER BY * ------------
--  The ORDER BY clause allows you to order the rows of your result set.
select ename, job, sal from emp where deptno = 10 order by sal desc

select ename, job from emp order by substr(job, length(job)-2)

select enmae, sal, job, comm from emp order by case when job = 'SALESMAN' then comm
                                                else sal
                                               end

-- replace particular character or string
select replace('SQL tutorial', 't', 'r'); -- SQL rutorial

-- translate each character of string with translated character
select translate('[2+3]*{5-2}', '[]{}', '()()') -- (2+3)*(5-2)

