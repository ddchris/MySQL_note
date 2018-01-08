
# 使用 update 更新資料,通常會配合 where 設定條件
update cmdev.emp
set salary = salary + 200;

# 薪水 2500 以下的員工才會加薪 200
update cmdev.emp
set salary = salary + 200
where salary < 2500;

# 使用 ignore 忽略主鍵重覆時錯誤訊息(也不更新資料)
update ignore cmdev.dept
set deptno = 50
where deptno = 30;

# 若資料格式錯誤會無法更新
update cmdev.emp
set salary = 'Hello'
where empno = 7369;

# 使用 ignore 當資料錯誤時會自動代入 0 或 '0'
update ignore cmdev.emp
set salary = 'Hello'
where empno = 7369;

select salary from cmdev.emp
where empno = 7369;

# 搭配 order by 與 limit 修改資料
select salary from cmdev.emp
where salary > 2200
order by salary desc;

# 薪水前3高的員工減薪 100
update cmdev.emp
set salary = salary - 100
order by salary desc
limit 3;

select salary from cmdev.emp
where salary < 2700
order by salary;

# 薪水前3低的員工加薪 100
update cmdev.emp
set salary = salary + 100
order by salary
limit 3;

# 使用 delete 刪除資料, 配合 where, order by, limit 指定條件

# 刪除薪水最高的 2 筆員工資料
delete from cmdev.emp
order by salary desc
limit 2; 

# 清空 table 內所有值, 其中 truncate 效率好
delete from cmdev.emp;
truncate table cmdev.emp;

# 丟掉 table, 包含裡面所有資料(危險!!)
drop table cmdev.emp;

# 丟掉 database, 包含裡面所有資料(危險!!)
drop database cmdev;
select * from cmdev.emp;