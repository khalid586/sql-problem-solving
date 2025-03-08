select c.name,sum(amount) from categories c
right join products p
on c.id = p.id_categories
group by c.id