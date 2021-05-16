---------- * UNION, UNION ALL, INTERSECT * -------------
-- The UNION command combines the result set of two or more SELECT statements (only distinct values)
select City from Customers
UNION
select City from Suppliers;
---- select unique cities from Customers and suppliers

-- UNION ALL allows duplicate values to get selected
select City from Customers
UNION ALL
select City from Suppliers;

----- distinct used to select distinct -------

select distinct City from Customers
UNION all
select City from Suppliers;

--- !imp the data type we are making union on and no of fields we oerating union on must be same. folllowing commads are failure
select deptno from emp
union
select ename from dept

select deptno, ename from emp
union
select ename from dept

-- The SQL INTERSECT clause/operator is used to combine two SELECT statements,
-- but returns rows only from the first SELECT statement that are identical to a row in the second SELECT statement.
-- similarly EXCEPT keyword used to perform set minus operation between two select statements.


---------- * JOINS * -------------
--- A join is an operation that combines rows from two tables into one.
--- this is an example of equi join.
--- an equi-join is one in which the join condition is based on an equality condition

-- * (INNER) JOIN: Returns records that have matching values in both tables
-- * LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- * RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- * FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

select e.ename, d.loc
    from emp e, dept d 
where e.deptno = d.deptno
    and e.deptno = 10

---- explicit JOIN ----
select e.ename, d.loc
    from emp e inner join dept d
        on (e.deptno = d.deptno)
where e.deptno = 10

---- Use the JOIN clause if you prefer to have the join logic in the FROM clause rather than the WHERE clause
