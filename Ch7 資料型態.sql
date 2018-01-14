
# __________ 整數型態 ____________
# tinyint()    byte:1,  0~2^8
# smaillint()  byte:2,  0~2^16
# mediumint()  byte:3,  0~2^24
# int()        byte:4,  0~2^32
# bigint()     byte:8,  0~2^64

desc cmdev.integertable;

insert integertable values (1, 2, 3, 4, 5);
insert integertable values (10, 20, 30, 50, 60);
# 使用預設值,若沒預設值填入 null
insert integertable () values ();
# 輸入值若超出範圍會報錯
insert integertable values (200, 2, 3, 4, 5);

select * from cmdev.integertable;

# __________ 小數型態 ____________
# float(總長度,小數位數)  byte:4,  最大長度: 255,30
# double(總長度,小數位數)  byte:8,  最大長度: 255,30
# decimal(總長度,小數位數)  byte:4,  最大長度: 65,30
# ps. numeric == decimal

# 整數,浮點數都可以使用 unsigned 設定只能儲存正數
desc cmdev.numerictable;
insert cmdev.numerictable values 
(254,65530,100000,9999999,1234567890,3.1415926,3.1415926,3.1415926);

select * from cmdev.numerictable;

# 整數,浮點數在建立表格時都可以"設定位數"
# 整數位數為顯示位數,與實際儲存長度無關
# 浮點數超過位數則進行四捨五入到指定位數
desc cmdev.numerictable2;
insert cmdev.numerictable2 (f,f2,f3)values 
(123.12, 123.12, 123.12);

insert cmdev.numerictable2 (f,f2,f3)values 
(123.123, 99.995, 99.994);

select * from cmdev.numerictable2;

# 利用 unsigned zerofill 在回傳資料時左側補0至指定位數
desc cmdev.numerictable3;
insert cmdev.numerictable3 values
(1, 1, 1, 1, 1, 1.1, 1.1, 1.1);
select * from cmdev.numerictable3;

# __________ 位元型態 ____________
# bit(長度)
desc cmdev.bittable;

# 可以直接儲存數字或是二進位值
insert bittable values
(1,255,65536),
(b'1', b'111', b'101111001');
select * from bittable;

# __________ 字串型態 ____________
# char(長度)
# varchar(長度)
# tinytext
# text
# mediumtext
# longtext

show create table cmdev.nonbinarytable2;
select * from cmdev.nonbinarytable2;
insert nonbinarytable2 (s2, s3) values
('一二三','一二三'),
('一二三123','一二三123');

# length(文字字串) 回傳字串資料實際儲存長度(位元組)
# char_length(文字字串) 回傳字串資料字數
select s,length(s), s2, length(s2), s3, length(s3)
from nonbinarytable2;

select s,char_length(s), s2, char_length(s2), s3, char_length(s3)
from nonbinarytable2;

# char set 影響字串儲存空間, collation 影響字串 order by 排序
show create table cmdev.nonbinarytable3;
select * from cmdev.nonbinarytable3 order by s;
select * from cmdev.nonbinarytable3 order by s2;

show collation like 'latin%';

# collation 亦會影響字串 where 條件判斷
select * from cmdev.nonbinarytable3 
where s = 'aaa' ;
select * from cmdev.nonbinarytable3 
where s2 = 'aaa' ;






