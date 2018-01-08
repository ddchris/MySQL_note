# where 中設定結合條件
use world;

# 有需要可在 from 中幫資料表取別名 (alias)
select con.Code, con.Capital, city.Name
from country as con, city
where con.Capital = city.ID
order by con.Capital;

# 若欄位名稱沒重複則表格名稱可省略
select Code, Capital, city.Name
from country, city
where Capital = ID
order by Capital;

# 使用 inner join 做結合查詢
select Code, Capital, city.Name
from country inner join city on Capital = ID
order by Capital;

# 如果結合欄位名稱一樣 on 可換成 using (欄位名)
select empno, ename, dname
from emp inner join dept using(deptno);

# left 表左邊可以為 null, right 則相反
# 使用 outer join 使得"沒有部門的員工"也能出現在資料中
select empno, ename, e.deptno, d.dname
from emp as e left outer join dept as d
using (deptno); 

select empno, ename, e.deptno, d.dname
from emp as e right outer join dept as d
using (deptno); 

# 使用 union 將不同查詢結果合併為一個
# 欄位名稱將以第一個查詢條件欄位為主
# 所有查詢欄位數量一定要一樣
select Region, Name, Population
from country
where Region = 'Southeast Asia' and Population < 5000000
union
select Region, Name, Population
from country
where Region = 'Eastern Asia' and Population < 1000000;







 