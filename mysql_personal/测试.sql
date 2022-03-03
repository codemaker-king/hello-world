`myemployees`USE myemployees;

DESCRIBE employees;
SHOW STATUS;
SHOW GRANTS;
DESCRIBE employees;
SELECT DISTINCT first_name FROM employees LIMIT 5,5;#返回结果不同且最多只返回5行
SELECT * FROM employees;
SELECT DISTINCT first_name FROM employees ORDER BY first_name;#对返回结果进行排序
SELECT first_name,phone_number FROM employees WHERE first_name = 'David' ORDER BY phone_number DESC; 
#使用限定条件筛选需要的值并进行降序排序
SELECT last_name,employee_id FROM employees WHERE employee_id BETWEEN 100 AND 150;
SELECT CONCAT(first_name,last_name,'(',phone_number,')') AS 员工信息 FROM employees ;
SELECT NOW();
SELECT 3*2;
#排序查询

SELECT * FROM employees ORDER BY first_name DESC;

SELECT * FROM employees 
WHERE salary >= 5000
ORDER BY salary DESC;

#按表达式查询员工信息和年薪并按照年薪从大到小排序  按照表达式排序
SELECT *, salary*12*(1+IFNULL(commission_pct,0)) AS 年薪
FROM employees
ORDER BY salary*12*(1+IFNULL(commission_pct,0));

SHOW VARIABLES LIKE "%char%";


SELECT NOW() 当前时间;
#和分组函数（统计函数，给定一组值，输出一个值）一同查询的字段要求是group by 后的字段


SELECT DATEDIFF(NOW(),'1997-06-19');

#分组函数

#分组查询 查询所有人的平均工资与查询每个部门的平均工资

#where 放在from后面，group by的前面，having 放在group by 后面，用来对结果集进行筛选

#查询领导编号大于 102 的每个领导手下员工的最低工资大于5000的领导编号及最低工资

SELECT manager_id,MIN(salary)
FROM employees
WHERE manager_id > 102
GROUP BY manager_id
HAVING MIN(salary > 5000);


#按员工姓名的长度分组，查询每一组的员工个数，筛选员工大个数于5的有哪些

SELECT COUNT(*),LENGTH(last_name)
FROM employees
GROUP BY LENGTH(last_name)
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC;

#连接查询
#直接输入查询的列名和报名会出现笛卡尔乘积现象 第一张表的每一列都会跟第二张表的所有列相匹配
SELECT RAND();#获取0-1之间的随机数
SELECT RAND(); 
SELECT CURTIME();
SELECT CURDATE();
SELECT NOW();
SELECT YEAR(NOW());
SELECT MONTH(NOW());
SELECT DAY(NOW());


#删除一行
DELETE FROM  表名
WHERE 删除条件



CREATE TABLE students
(

stu_id      INT           NOT NULL   AUTO_INCREMENT,
stu_name    VARCHAR(50)   NOT NULL,
stu_address VARCHAR(50)   NULL,
stu_phone   INT(12)       NULL,
stu_sex     VARCHAR(20)   NULL,
PRIMARY KEY (stu_id)

)ENGINE = INNODB;



UPDATE students 

SET
    stu_name = '张三',
    stu_address = '潍坊',
    stu_phone = 123456789,
    stu_sex = '女';
    


SELECT * FROM students;

#显示数据库的状态
SHOW VARIABLES;
SHOW STATUS;
SHOW PROCESSLIST;

USE mysql;
SELECT USER FROM USER;

#显示用户权限
SHOW GRANTS FOR root;




