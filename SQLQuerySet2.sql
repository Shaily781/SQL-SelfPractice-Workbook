--1. List all states in the dataset, sorted alphabetically.
Select state
from state_stats
order by state


--2. Show the states and regions where the GDP is below 5000 crore.
Select state, region
from state_stats
where gdp_cr < 5000


--3. Which state has the highest literacy rate?
Select top 1 state
from state_stats
Order by literacy_rate DESC

--4. Show the 3 largest states by area.
Select top 3 state, area_km2
from state_stats
order by area_km2 DESC


--5. Which regions have at least one state with urbanization above 60%? *(think: use DISTINCT region with WHERE)
Select region, count(state) as StateAbove60Urbanization
from state_stats
where urbanization_pct > 60
group by region


--6. Show all states where population is less than the average population of all states.
Select state
from state_stats
where population_lakh < (select avg(population_lakh) from state_stats)


--7. For each region, what is the highest literacy rate?
Select region, max(literacy_rate) as HighestLiteracyRate
from state_stats
group by region

--8. List the states that have a literacy rate *equal* to the average literacy rate of all states (if any).
Select state
from state_stats
where literacy_rate = (select avg(literacy_rate) from state_stats)

--9. What’s the total GDP of all southern states?
Select sum(gdp_cr)
from state_stats
where region = 'South'

--10. Show all states whose name starts with the letter ‘K’.
Select state
from state_stats
where state like 'K%'

--11. Which state(s) have both the minimum and maximum population in the dataset?
-- Find the state with minimum population
Select state, population_lakh
from state_stats
where population_lakh = (select min(population_lakh) from state_stats)
UNION
-- Find the state with maximum populatio
Select state , population_lakh
FROM state_stats
where population_lakh = (select max(population_lakh) from state_stats)


--12. For each region, how many states have a GDP above 1 lakh crore?** *(GROUP BY + WHERE)
select region, count(state) as NumberOfStates 
from state_stats
where gdp_cr > 100000
group by region


--13. Which states have a literacy rate between 75 and 80 (inclusive)?
select state
from state_stats
where literacy_rate >= 75 AND literacy_rate <=80

select state
from state_stats
where literacy_rate between 75 and 80

--14. Show all states whose name contains ‘Pradesh’.
Select state
from state_stats
where state like '%Pradesh'


--15. List the regions, sorted by their average urbanization percentage (highest first).
select region, avg(urbanization_pct)
from state_stats
group by region
Order by avg(urbanization_pct) DESC

--16. Which state(s) have a population closest to the median population of all states?**
--select count(*) from state_stats
select state, population_lakh
from state_stats
Order by population_lakh ASC
offset 16 rows
fetch next 1 row only

--17. List all states with a GDP per sq km (gdp_cr / area_km2) above 1.** *(calculated field!)
Select state, (gdp_cr/area_km2) as GDPperSqKm
from state_stats
where (gdp_cr/area_km2) > 1



--18. Find the state with the lowest urbanization percentage in the South region.
Select state
from state_stats
where urbanization_pct = (Select min(urbanization_pct) from state_stats where region = 'South')


--19. For each region, list the state with the highest population.**
Select region,state
from state_stats
Where population_lakh IN (select max(population_lakh) From state_stats Group by region);



--20. How many states have a literacy rate that’s a prime number?** *(think: students will need to recall prime numbers and filter accordingly!)*
--select max(literacy_rate) from state_stats
 Select count(state)
 from state_stats
 where literacy_rate in (2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97)