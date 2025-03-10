select prdt.name, prvt.name from products prdt
left join providers as prvt
on prvt.id = id_providers
where prvt.name = 'Ajax SA'