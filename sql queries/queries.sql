CREATE TABLE home_value(
	regionID VARCHAR,
	sizeRank VARCHAR,
	zipCode VARCHAR,
	state VARCHAR,
	city VARCHAR,
	Metro VARCHAR,
	CountName VARCHAR,
	date DATE,
	homeValue VARCHAR,
	year VARCHAR,
	month VARCHAR
)
CREATE TABLE rent_value(
	zipcode VARCHAR,
	primaryCity VARCHAR,
	city VARCHAR,
	date VARCHAR,
	rent VARCHAR,
	latitude VARCHAR,
	longitude VARCHAR,
	county VARCHAR,
	year VARCHAR,
	month VARCHAR
)
SELECT * FROM rent_value

SELECT 
   	rent_value.zipcode,
	rent_value.primaryCity,
	rent_value.city,
	rent_value.date,
	rent_value.rent,
	rent_value.latitude,
	rent_value.longitude,
	rent_value.county,
	rent_value.year,
	rent_value.month,
	home_value.homeValue
FROM 
   rent_value
JOIN home_value ON 
     rent_value.zipcode = home_value.zipCode
     AND rent_value.year = home_value.year
	 AND rent_value.month = home_value.month

CREATE TABLE income(
	state VARCHAR,
	stateSymbol VARCHAR,
	year VARCHAR,
	income VARCHAR
)

CREATE TABLE population(
	state VARCHAR,
	stateSymbol VARCHAR,
	year VARCHAR,
	population VARCHAR
)

select * from population

DELETE FROM population
WHERE state IN (Alaska)

SELECT 
   	population.state,
	population.stateSymbol,
	population.year,
	population.population,
	income.income
FROM 
   population
JOIN income ON 
     population.stateSymbol = income.stateSymbol
     AND population.year = income.year
	
	
CREATE TABLE income_population(
	state VARCHAR,
	stateSymbol VARCHAR,
	year VARCHAR,
	population VARCHAR,
	income VARCHAR
)
	
CREATE TABLE rent_homevalue(
	zipcode VARCHAR,
	primaryCity VARCHAR,
	city VARCHAR,
	date VARCHAR,
	rent VARCHAR,
	latitude VARCHAR,
	longitude VARCHAR,
	county VARCHAR,
	year VARCHAR,
	month VARCHAR,
	homevalue VARCHAR
)	

select * from geo

create table geo_rent_homevalue as
SELECT 
   	rent_homevalue.zipcode,
	rent_homevalue.primaryCity,
	rent_homevalue.city,
	geo.state,
	rent_homevalue.date,
	rent_homevalue.rent,
	rent_homevalue.latitude,
	rent_homevalue.longitude,
	rent_homevalue.county,
	rent_homevalue.year,
	rent_homevalue.month,
	rent_homevalue.homeValue
FROM 
   rent_homevalue
JOIN geo ON 
     rent_homevalue.zipcode = geo.zip


select * from income_population


SELECT 
   	geo_rent_homevalue.zipcode,
	geo_rent_homevalue.primaryCity,
	geo_rent_homevalue.city,
	geo_rent_homevalue.state,
	geo_rent_homevalue.date,
	geo_rent_homevalue.rent,
	geo_rent_homevalue.latitude,
	geo_rent_homevalue.longitude,
	geo_rent_homevalue.county,
	geo_rent_homevalue.year,
	geo_rent_homevalue.month,
	geo_rent_homevalue.homeValue,
	income_population.population,
	income_population.income
FROM 
   geo_rent_homevalue
JOIN income_population ON 
     geo_rent_homevalue.state = income_population.statesymbol
	 AND geo_rent_homevalue.year = income_population.year