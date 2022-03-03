

#2022-02-22
#mysql必知必会 收官之战
#1.了解sql
#数据库软件：DBMS(数据库管理系统) 数据库是使用DBMS创建和管理的容器
#column 列   主键：唯一标识表中每个行的列，不允许NULL
#SQL structured query language 结构化查询语言 与数据库进行通讯的语言
#mysql是一种DBMS


SHOW DATABASES;# 显示当前的数据库
USE mysql;#使用数据库
USE myemployees;
SHOW TABLES;#显示当前数据库中的表
SHOW COLUMNS FROM employees;#显示当前表列
DESCRIBE employees;#用 describe 实现跟show 一样的效果
SHOW STATUS;#显示服务器的状态信息
SHOW CREATE DATABASE;
SHOW CREATE students;
SHOW GRANTS;#显示授予用户的权限
SHOW ERRORS;#显示错误
SHOW WARNINGS;#显示警告
SHOW AUTHORS;
 

#检索数据
#select  从一个或多个表中检索信息

SELECT first_name FROM employees;#检索单个列
SELECT last_name, salary, hiredate FROM employees;#检索多个列
SELECT * FROM employees;#检索所有列
SELECT DISTINCT salary FROM employees;#检索的不同行，过滤相同的数据，使用distinct关键字
SELECT last_name FROM employees LIMIT 5;#限制输出结果只有五行数据
SELECT last_name FROM employees LIMIT 5,5;#限制输出结果从第五行开始的五行数据
SELECT employees.`commission_pct` FROM myemployees.employees;#使用完全限定的表名和列名


#排序检索数据

SELECT last_name FROM employees ORDER BY last_name DESC;
SELECT last_name FROM employees ORDER BY last_name ASC;#排序数据
SELECT last_name, email, manager_id FROM employees ORDER BY last_name, manager_id;#按多个列进行排序



#触发器 delete insert delete 支持

CREATE TRIGGER new_product AFTER INSERT ON products
FOR EACH ROW SELECT 'product added';



















