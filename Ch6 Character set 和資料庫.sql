# 顯示 MySQL支援的字元集
show character set;
show char set;

# 顯示字元集支援的排序方式
show collation;
show collation like 'latin%';

# 顯示 MySQL 資料庫伺服器所使用的資料夾路徑
show variables like 'datadir';

# 使用 "create database 資料庫名稱"  建立資料庫
# 可同時設定資料庫字元集及排序方式(可省略使用預設)
create database if not exists chris2012
char set utf8
collate utf8_unicode_ci;

# 使用 "alert database 資料庫名稱" 修改資料庫元集及排序方式
alter database chris2012
char set tis620
collate tis620_bin;

# 使用 "drop database 資料庫名稱" 刪除資料庫(危險!)
drop database if exists chris2012;

# 顯示所有資料庫名稱
show databases;
show schemas;

# 取得建立資料庫時地敘述
show create database chris2012;
show create database information_schema;

# 內建 information_schema 資料庫儲存"伺服器重要資訊"
# 其內 SCHEMATA 表格儲存與"資料庫相關資訊"
use information_schema;
select * from information_schema.SCHEMATA;
