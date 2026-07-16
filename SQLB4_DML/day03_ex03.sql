with visit as (
    select person_id, pizzeria.name AS pizzeria_name, person.gender from person_visits pv
    join pizzeria on pizzeria.id = pv.pizzeria_id
    join person on person.id = pv.person_id
), females as (
    select COUNT(*) AS number, pizzeria_name from visit
    where gender = 'female'
    group by pizzeria_name
), males as (
    select count(*) as number, pizzeria_name from visit
    where gender = 'male'
    group by pizzeria_name
)

select males.pizzeria_name from males
join females on females.pizzeria_name = males.pizzeria_name
where males.number <> females.number
order by pizzeria_name;