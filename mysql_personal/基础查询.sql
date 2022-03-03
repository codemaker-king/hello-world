#进阶1：基础查询
/*
语法：
select(选择、过滤、查看）
select 查询列表 from 表名； 
1.查询列表可以是：表中的字段、常量值、表达式、函数
2.查询的结果是一个虚拟的表格
*/
USE myemployees ;

#查询表中的单个字段
SELECT 
  last_name 
FROM
  employees ;

#查询表中的多个字段
SELECT 
  first_name,
  last_name,
  email,
  salary 
FROM
  employees ;

#查询表中的所有字段 
SELECT 
  * 
FROM
  employees ;

#查询常量
SELECT 
  100 ;

#查询字符
SELECT 
  'john' ;

#查询表达式
SELECT 
  50 * 100 ;

#查询函数
SELECT 
  VERSION() ;

#起别名 AS可以省略 有关键字时加引号或者着重号
SELECT 
  last_name AS 姓,
  first_name AS 名 
FROM
  employees ;

#去重 在字段名前面加上 distinct
SELECT DISTINCT 
  `department_id` 
FROM
  `employees` ;

#拼接用 concat() +号只作运算符用
SELECT 
  CONCAT(last_name,'_',first_name) AS 姓名 
FROM
  employees ;
SELECT
CONCAT(
`first_name`,',',
`last_name`,',',
`email`,',',
`phone_number`,',',
`job_id`,',',
`salary`,',',
IFNULL(`commission_pct`,0))
AS output
FROM employees;