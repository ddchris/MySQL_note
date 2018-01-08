# Ch3 homework

# '1'
select empno, ename, hiredate,
case weekday(hiredate)
when '0' then 'Sunday'
when '1' then 'Monday'
when '2' then 'Tuesday'
when '3' then 'Wednesday'
when '4' then 'Thursday'
when '5' then 'Friday'
when '6' then 'Saturday'
end as weekday
from cmdev.emp;

# '2'
select ename, job, salary, 
case job
WHEN 'PRESIDENT' THEN salary*2
WHEN 'MANAGER' THEN salary*1.5
WHEN 'ANALYST' THEN salary*1
else 0
end as Bonus
from cmdev.emp;

# '3'
select job, sum(salary) as Summary,
avg(salary) as Average,
max(salary) as Maximun,
min(salary) as Minumun
from cmdev.emp
group by job;

 
