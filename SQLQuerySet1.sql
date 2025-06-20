--1. List all the states in the dataset.

Select state
from state_stats

--2. Which states have a literacy rate above 85?
Select state 
from state_stats
where literacy_rate > 85

--3. Show all details of states from the ‘South’ region.
Select * 
from state_stats
where region = 'South'

--4. List the unique regions present in the dataset.
select distinct region
from state_stats

--5. Which states have a population greater than 1000 lakh?
select state
from state_stats
where population_lakh > 1000

--6. What is the average literacy rate across all states?
select state, avg(literacy_rate) as AvgLiteracy
from state_stats
group by state

--7. Show all states with urbanization percentage above 50, sorted by urbanization percentage descending.
select state, urbanization_pct 
from state_stats
where urbanization_pct > 50
order by urbanization_pct DESC

--8. How many states are there in each region?
select region, count(state) as StateCount
from state_stats
group by region

--9. List the top 5 states by GDP (gdp_cr), sorted highest to lowest.
select top 5 state, gdp_cr 
from state_stats
order by gdp_cr DESC

--10. Which state has the smallest area?
select top 1 state, area_km2 
from state_stats
order by area_km2 ASC

--11. For each region, show the average GDP.
Select region, avg(gdp_cr) as AverageGDP
from state_stats
group by region

--12. List all states where population is below 100 lakh and literacy rate is above 80.
Select state, population_lakh
from state_stats
where population_lakh < 100 AND literacy_rate > 80

--13. How many unique literacy rates are there in the dataset?
Select count(distinct literacy_rate) as UniqueLiteracyRate
from state_stats


--14. Which states have both above-average GDP and above-average literacy rate?
Select state, gdp_cr, literacy_rate
from state_stats
where gdp_cr > (Select avg(gdp_cr) from state_stats)
AND literacy_rate > (Select avg(literacy_rate) from state_stats)


--15. List all states from the North-East region with literacy rate below 80.
Select state
from state_stats
where region = 'North-East' AND literacy_rate < 90
