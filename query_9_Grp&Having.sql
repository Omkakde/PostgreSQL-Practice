-- select city, COUNT(city) as citys from companys
-- GROUP BY city


select city, COUNT(city) as citys from companys
GROUP BY city
HAVING city LIKE '%a'