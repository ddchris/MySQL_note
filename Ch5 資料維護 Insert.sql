# 取得詳細資訊
desc country;
desc cmdev.dept;
describe country;

# 使用 insert 新增資料
insert cmdev.dept values (
60, 'EUD', 'NEW YORK'
);

# 使用 defalut 插入建立表格時設定的預設值
insert cmdev.dept values (
77, 'PIC', default
);

select deptno, location from cmdev.dept
where deptno > 25;

# 自行指定欄位資料順序
insert into cmdev.dept (dname, location, deptno)
values ('PURCH', 'I-LAN', 80);

# 沒指定到的所有欄位都會填入 null, 若欄位無法接受 null會報錯!!
insert into cmdev.dept (deptno)
values (30);

insert country (Code, Name, Region, LocalName) 
values('API', 'Chris', 'I-LAN', 'TEST');

select Code, Name, Region, Continent
from country;

# 也可使用 set 插入欄位值
insert into cmdev.dept
set deptno = 90, dnam = 'SHIPPING';


desc cmdev.travel;
select * from cmdev.travel;

# 使用 on duplicate key update 當主鍵存在或不存在時做不同動作
insert cmdev.travel
values (9999, 'BOSTON', 1)
on duplicate key update counter = counter + 1;



 