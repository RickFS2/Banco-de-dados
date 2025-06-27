create database atividadeSQL;

--1 Quantos filmes há em português?

select count(*) from film f
inner join "language" l
on l.language_id = f.language_id
where l."name" = 'Portuguese';

--2 Quantos Clientes alugaram o filme de id=7?

select count(*) from customer c
inner join rental r
on c.customer_id = r.customer_id
inner join inventory i
on r.inventory_id = i.inventory_id
inner join film f
on i.film_id = f.film_id
where f.film_id = 7;



--3 Quantos alugueis foram feitos no total

select count(*) from rental r;


--4 Qual foi o custo do filme de id=600?

select replacement_cost from film f
where f.film_id = 600;


--5 Qual funcionario alugou mais filmes

select max(p.amount) from payment p inner join staff s 
on s.staff_id = p.staff_id group by s.staff_id; 

--6 Quantos funcionarios tem em cada loja

select store_id, count(*) from staff s
group by store_id


-- 7 LIste as seguintes colunas: título do filme, idioma, custo, data do ultimo aluguel, 
--nome do cliente do ultimo aluguel, funcionario que alugou loja do aluguel e preço do aluguel
