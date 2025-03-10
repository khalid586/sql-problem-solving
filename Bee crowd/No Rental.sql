-- 1st approach
select c.id, name from customers c
left join locations l
on c.id = id_customers
where id_customers is null

-- 2nd approach
select c.id, name from customers c
where not exists(
    select id_customers 
    from locations l
    where c.id = l.id_customers
)