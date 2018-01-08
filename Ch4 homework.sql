select country.Code, city.name from country, city;

#1.
select empno, ename, job, emp.deptno, dname
from emp join dept using (deptno)
order by deptno, empno;

#2.
select empno, ename, job, emp.deptno, dname
from emp left outer join dept using (deptno)
order by empno;

#3.
select Population, max(Population), min(Population) from country
where Region like '%Asia%';