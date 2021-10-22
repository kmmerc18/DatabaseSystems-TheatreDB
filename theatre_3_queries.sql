-- Final: Theatre Database
-- CS345 Databases Harcourt 
-- Kim, Tom, and Corinna
-- Purpose: Document queries that fulfill our functional requirements.


-- 1. The user should be able to look up the job title of individual people in the company. 
select dept, title 
from people 
where name='Corinna' and birthdate='1992-07-12';


-- 2. The user should be able to look up the people who work in each job title (stage manager, actor, musician, administrator, director, trustee, etc)
select name 
from people 
where title='Actor';


-- 3. The user should be able to look up the crew at each venue for each show.
with venuedates as (
select showvenue.name as "venue_name", showdates.name as "show" 
from showvenue join showdates on showvenue.date = showdates.date)

select distinct name, "type" 
from venuedates natural join company
where show='The Phantom of the Opera';


-- 4. The user should be able to look up the current and historical hourly rate of each company member and the show they were paid that rate.
-- For one member:
with showhours as (
select distinct EXTRACT(year from date) as "year", showdates.name as "show" 
from showdates join hours on showdates.date=hours.show_date 
where hours > 0)

select * 
from showhours natural join wages
where name='Kim' and birthdate='1984-07-12'
order by year, show;

-- For all members:
with showhours as (
select EXTRACT(year from date) as "year", showdates.name as "show", hours.name, birthdate as "show" 
from showdates join hours on showdates.date=hours.show_date 
where hours > 0)

select * 
from showhours natural join wages
order by name, year;


-- 5. The user should be able to look up the book assigned to each musician for a show.
select bookassignment.name, birthdate, book 
from bookassignment join showdates on bookassignment.show_date=showdates.date
where show_date='2019-03-30';


-- 6. The user should be able to look up the instruments assigned to each musician in a show.
select instrumentassignment.name, birthdate, instrument 
from instrumentassignment join showdates on instrumentassignment.show_date=showdates.date
where show_date='2019-03-30';


-- 7. The user should be able to look up how many musicians are playing from each book.
select show_date, book, count(*)
from bookassignment
group by show_date, book
order by show_date;


-- 8. The user should be able to find out the instrumentation of a show.
select book, instrument 
from book 
where book.show_name='Hamilton';


-- 9. The user should be able to see the costs of different types of transportation.
select type, cost 
from transportation 
order by cost;


-- 10. The user should be able to see the capacity of types of transportation (volume and seating).
select type, seats, cubic_ft 
from transportation;


-- 11. The user should be able to look up the cast members for any show.
select name, character 
from role where show_date='2019-03-30';


-- 12. The user should be able to look up donors and their contact information.
select * 
from donors;


-- 13. The user should be able to look up the services provided by a given company (catering, audio/video recording) and their costs.
select name, type as "service", cost 
from company 
where name='The Full Package'; 


-- 14. The user should be able to find the donation tier of a donor or sponsor.
-- To get the tiers for each donor for each show, such as to see our top donors:
with thresholds_met as (
select name, birthdate, show_date, max(threshold) 
from donations, donortier 
where amount > threshold 
group by name, birthdate, show_date),

tiers as (
select name, birthdate, show_date, type, max 
from thresholds_met join donortier on threshold=max)

select tiers.name, birthdate, show_date, showdates.name as "show_name", type 
from tiers join showdates on date=show_date
order by max;

-- To get the tiers for all donors for a specific show, such as to fill the show program:
with thresholds_met as (
select name, birthdate, show_date, max(threshold) 
from donations, donortier 
where amount > threshold 
group by name, birthdate, show_date),

tiers as (
select name, birthdate, show_date, type, max 
from thresholds_met join donortier on threshold=max)

select tiers.name, birthdate, type 
from tiers join showdates on date=show_date
where show_date='2019-03-30'
order by max;


-- What donor tier are the donors in? What did they donate to each show?
with option as (
select *
from donations, donortier
where donations.amount >= donortier.threshold),

opt as (
select name, birthdate, show_date, amount, max(threshold)
from option
group by name, birthdate, show_date, amount)
	
select opt.name as Donor_Name, 
       birthdate as Donor_Birthdate, 
	   showdates.name as Show_Name, 
	   amount as Donation, type as Tier
from opt join showdates on (opt.show_date=showdates."date"), donortier
where max = donortier.threshold
order by showdates.name, amount;


-- 15. The user should be able to look up the venues in a specific zip/state.
-- By zip code:
select * 
from venue 
where zip_code='02861';

-- By state:
select * 
from venue 
where state='MA';


-- 16. The user should be able to view the square footage of a venue’s stage.
select name, sq_ft 
from venue; 


-- 17. The user should be able to look up what flooring sections can be removed from the stage (for trapdoors).
select name, removable_floor 
from venue;


-- 18. The user should be able to look up the seating capacity of a venue.
select name, seats 
from venue;


-- 19. The user should be able to look up if any seats can be removed from the front rows of a venue (in the situation where seats might need to be removed to fit an orchestra).
select name, removable_seats 
from venue;


-- 20. The user should be able to look up the orchestra capacity of a pit (or, lacking a pit, the space taken by removable seats) to verify if the current members of the orchestra will fit in a venue.
-- Just get the capacity:
select name, orchestra_capacity, removable_seats 
from venue;

-- Verify the current orchestra members will fit:
with members as (
select count(distinct name) 
from instrumentassignment
where show_date='2019-03-30'),

capacity as (
select name, orchestra_capacity, removable_seats 
from venue)

select name as "Venue", case when count <= orchestra_capacity then 'Yes' else 'No' end as "Fits in pit?",
       case when count <= removable_seats/2 then 'Yes' else 'No' end as "Fits with seats removed?",
       case when count <= orchestra_capacity + (removable_seats/2) then 'Yes' else 'No' end as "Fits with pit extended into removed seats?"		  
from members, capacity; 


-- 21. The user should be able to look up the price tickets are sold for to adults, children, and seniors.
select * 
from ticket;


-- 22. The user should be able to look up the cost per square foot of a venue’s stage based on rental fee.
select name, round((fee / sq_ft)::numeric, 2) as cost_per_sq_ft
from venue
order by cost_per_sq_ft;


-- 23. The user should be able to look up the price per seat and price per cubic foot of any given transportation.
select type as "Type", 
       date as "Date", 
	   round(cast(cost/seats as numeric), 2) as "Price per Seat", 
	   round(cast(cost/cubic_ft as numeric), 2) as "Price per Cubic Foot" 
from transportation;


-- 24. The user should be able to look up the tour dates and locations planned.
select * 
from showdates 
where current_date < date;


-- 25. The user should be able to look up accreditation for any show performed (lyric writer, music writer, etc.)
select *
from showwriters;


-- 26. The user should be able to look up how many scripts/orchestra books the company currently is renting.

-- extract showname for most recent show
with curr_show as (
select *
from showdates
    natural join firstshow
order by date desc
limit 1),

-- count number of books for that show
counts as (
select count(*), 'books' as type
from bookassignment
    right outer join curr_show on bookassignment.show_date = curr_show.date

union all

-- count number of scripts for that show (roles)
select count(*), 'scripts' as type
from role
    right outer join curr_show on role.show_date = curr_show.date

union all

-- count number of scripts for that show (understudies)
select count(*), 'scripts' as type
from understudy
    right outer join curr_show on understudy.show_date = curr_show.date)

-- sum up
select sum(count) as count, type
from counts
group by type;


-- 27. The user should be able to calculate the total costs of the company for a given time span
-- (like the “first quarter”, which could be January-March for a company).
-- a tmp table that stacks all quarterly costs for each category:
-- (people, venues, transportation)
with all_cat_costs as (

-- total amount paid to people
-- aggregate with group by
select year, quarter, sum(paid) as total_cost
from all_performances
group by year, quarter

union all

-- total amount spent on venues
select date_part('year', showdates.date) as year, 
       date_part('quarter', showdates.date) as quarter,
       sum(fee) as total_cost
from showdates inner join showvenue on showdates.date = showvenue.date inner join venue on showvenue.name = venue.name
group by year, quarter

union all

-- total amount spent on transportation
select date_part('year', date) as year, 
       date_part('quarter', date) as quarter,
       sum(cost) as total_cost
from transportation
group by year, quarter)

select year, quarter, sum(total_cost) as total_cost
from all_cat_costs
group by year, quarter
order by year, quarter;


-- 28. The user should be able to look up the number of hours each member has worked
-- for a particular time period/show.

-- Query 1: Number of hours each member has worked for a show
-- join with relation showdates so that info can be reused for same show
select show_name, production_start, name, birthdate, sum(hours) as total_hours
from all_productions
group by show_name, production_start, name, birthdate
order by show_name, production_start, total_hours desc;

-- Query 2: Number of hours each member has worked for each time period
-- E.g., First Quarter = Jan-March, etc.
select year, quarter, name, birthdate, sum(hours) as total_hours
from all_performances
group by year, quarter, name, birthdate
order by year, quarter, total_hours desc;


-- 29. The user should be able to look up the number of hours a subsection of the company has worked
-- (actors, managers, musicians, etc.)
-- and the amount the group was collectively paid per time period or show.
-- [Note: show_date refers to the first date of an individual production’s performance,
-- except for in ShowDates relation, which lists every performance of every show.
-- It is assumed all instrumentation, wages, etc. will remain consistent throughout a production.]

-- Query 1: Number of hours & amount paid for each group for each show
-- aggregate with group by
select show_name, production_start, all_productions.group, sum(hours) as total_hours, sum(paid) as total_paid
from all_productions
group by show_name, production_start, all_productions.group
order by show_name, production_start;

-- Query 2: Number of hours & amount paid for each group for each time period
-- E.g., First Quarter = Jan-March, etc.
-- aggregate with group by
select year, quarter, all_performances.group, sum(hours) as total_hours, sum(paid) as total_paid
from all_performances
group by year, quarter, all_performances.group;


-- 30. For each individual person, the user should be able to look up how many shows they have been involved in.
select name, birthdate, COUNT(show_date) 
from role
group by name, birthdate;


-- 31. The user should be able to look up the span of dates in which the company is working on a particular show. -- TODO if they do a show more than one time this is broken
select production_start, show_name, max(show_date) as production_end
from all_productions
group by production_start, show_name;


-- 32. The user should be able to list all actors and their roles for a given show.
select role.name as actor, 
       birthdate as actor_birthdate, 
	   character, 
	   "date" as show_date, 
	   showdates.name as show_name
from role join showdates on (role.show_date = showdates.date)
where showdates.name = 'Into The Woods' -- replace this with a given show name, showdates.date = [given showdate], or delete line entirely
order by role.show_date;


-- 33. The user should be able to compare the potential ticket sale revenue to the venue rental fee.
with max_price as (
select max(cost) 
from ticket),

potential as (
select name, seats, fee, max*seats as "revenue potential" 
from max_price, venue),

profit as (
select name, seats, "revenue potential", "revenue potential"-fee as "net" 
from potential)

select name, 
       round("revenue potential"::numeric, 2) as "revenue potential", 
	   round(net::numeric, 2) as "net", 
	   round((net/seats)::numeric, 2) as "net per seat" 
from profit;
