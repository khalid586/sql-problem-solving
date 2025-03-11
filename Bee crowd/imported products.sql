select p.name, pvt.name, c.name from products p
left join providers pvt on id_providers = pvt.id
left join categories c on id_categories = c.id
where pvt.name = 'Sansul SA' and c.name = 'Imported'