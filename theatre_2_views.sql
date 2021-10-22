-- Final: Theatre Database
-- CS345 Databases Harcourt 
-- Kim, Tom, and Corinna
-- Purpose: Create views useful for queries.

-- create a view containing info from first performance of each show
create view first_performance as
select showdates.name as show_name, 
       people.name, 
	   people.birthdate,
       people.title as group, 
	   hours, 
	   wage, 
	   hours * wage as paid
from showdates
     inner join hours on showdates.date = hours.show_date
     inner join people on hours.name = people.name and hours.birthdate = people.birthdate  -- {name, birthdate} uniquely identifies a person
     inner join wages on date_part('year', showdates.date)::numeric = wages.year and hours.name = wages.name and hours.birthdate = wages.birthdate; -- {name, birthdate, year} primary key for wages
            
-- create a view containing info for all performances of each show
-- join with relation showdates so that info can be reused for same show
create view all_performances as
select show_name, 
       date as show_date,
       date_part('year', date) as year, 
	   date_part('quarter', date) as quarter,
       first_performance.name, 
	   birthdate, 
	   first_performance.group, 
	   hours, 
	   paid
from first_performance inner join showdates on first_performance.show_name = showdates.name;

-- create a view containing info for all performances of each show AND
-- has the starting date for each production
-- sum () over () = running total - creates an id for a partitioning of productions
create view all_productions as
with productions as (
select show_name, 
       show_date, 
	   name, 
	   birthdate, 
	   all_performances.group,
       hours, 
	   paid, 
	   firstshow.date as production_start,
       sum(case when firstshow.date is not null then 1 end) over (order by show_name, show_date) as production
from all_performances left outer join firstshow on all_performances.show_date = firstshow.date
order by show_name, show_date)

-- first_value() fills NA's with previous value
select show_name, show_date, name, birthdate, productions.group, hours, paid,
       first_value(production_start) over (partition by production) as production_start
from productions;

-- grant permissions on views
grant all privileges on all tables in schema public TO szhan18;
grant all privileges on all tables in schema public TO kmmerc18;
grant all privileges on all tables in schema public TO capilc17;
grant all privileges on all tables in schema public TO ehar;
grant all privileges on all tables in schema public TO cslabtes;
