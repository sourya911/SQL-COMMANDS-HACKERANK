-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
select * from CITY where population > 100000 and countrycode = 'USA';

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select NAME from CITY where POPULATION >120000 AND COUNTRYCODE = 'USA';

-- Query all columns (attributes) for every row in the CITY table.
select * from CITY;

-- Query all columns for a city in CITY with the ID 1661.
select * from CITY where id =1661;

-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select * from CITY WHERE COUNTRYCODE='JPN';

-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME FROM CITY WHERE COUNTRYCODE='JPN';

-- Query a list of CITY and STATE from the STATION table.
SELECT CITY,STATE FROM STATION;

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0 ORDER BY CITY;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
select count(CITY) -  count(DISTINCT CITY) from STATION;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
elect CITY , LENGTH(CITY) from STATION order by length(CITY) ,CITY limit 1;
select CITY , LENGTH(CITY) from STATION order by length(CITY) desc ,CITY limit 1;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select city from station where REGEXP_LIKE(city,'^[aeiou]');

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city from station where CITY regexp  '[aeiouAEIOU]$';

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select city from station where city regexp '^[aeiouAEIOU].*[aeiouAEIOU]$'

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city from station where city rlike '^[^aeiouAEIOU].*';

-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '[^aeiouAEIOU].*[^aeiouAEIOU]$';

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
select distinct city from station where city RLIKE '^[^aeiouAEIOU].*|.*[^aeiouAEIOU]$';

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city FROM station WHERE city RLIKE '^[^aeiouAEIOU].*[^AEIOUaeiou]$';

-- Query the Name of any student in STUDENTS who scored higher than 75  Marks. Order your output by the last three characters of each name. 
--If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME,3), ID ASC;

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
-- where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.
select name from EMPLOYEE order by name;

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months.
-- Sort your result by ascending employee_id.
select name from employee where salary > 2000 and months < 10;













