select e.employee_id  from employees e
left join salaries s 
on e.employee_id = s.employee_id
where e.employee_id is null or
s.employee_id is null

union

select s.employee_id  from salaries s
left join  employees e
on e.employee_id = s.employee_id
where e.employee_id is null or
s.employee_id is null

order by employee_id asc