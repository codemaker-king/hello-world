#条件查询
/*
语法：
select 查询列表 from 表名 where 筛选条件
*/

#>12000的员工信息
SELECT * FROM employees WHERE salary > 12000;

#查询部门编号不等于90号的部门和员工编号

SELECT department_id, employee_id FROM employees WHERE department_id != 90;

#查询员工的工种编号是 AD_PRES, AD_VP, IT_PROG 的名字和电话号码
#IN的用法，提高简洁度（or）

SELECT last_name, phone_number FROM employees WHERE job_id IN ('AD_PRES', 'AD_VP', 'IT_PROG'); 

#查询员工号为176的员工的姓名，部门号和年薪

SELECT last_name, department_id,salary*12 FROM employees WHERE employee_id = 176; 


 









