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