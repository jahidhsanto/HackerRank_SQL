create database HackerRank_SQL;

use HackerRank_SQL;

create table CITY
(
	ID int not null,
	NAME varchar(17),
	COUNTRYCODE varchar(3),
	DISTRICT varchar(20),
	POPULATION int,
	primary key (ID)
);

INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
	VALUES(1, 'New York', 'USA', 'New York', 8175133),(2, 'Los Angeles', 'USA', 'California', 3792621),(3, 'Tokyo', 'JPN', 'Tokyo', 13929286),(4, 'London', 'GBR', 'England', 8908081),(5, 'Paris', 'FRA', 'Île-de-France', 2148327),(6, 'Berlin', 'DEU', 'Berlin', 3769495),(7, 'Sydney', 'AUS', 'New South Wales', 5230330),(8, 'Rome', 'ITA', 'Lazio', 2872800),(9, 'Mumbai', 'IND', 'Maharashtra', 12478447),(10, 'Cape Town', 'ZAF', 'Western Cape', 433688),(11, 'Rio de Janeiro', 'BRA', 'Rio de Janeiro', 6748000),(12, 'Moscow', 'RUS', 'Moscow', 11920000),(13, 'Madrid', 'ESP', 'Madrid', 3223334),(14, 'Buenos Aires', 'ARG', 'Buenos Aires', 2890151),(15, 'Lagos', 'NGA', 'Lagos', 9073000),(16, 'Cairo', 'EGY', 'Cairo', 10230350),(17, 'Hong Kong', 'HKG', 'Hong Kong', 7500700),(18, 'Bangkok', 'THA', 'Bangkok', 8281000),(19, 'Singapore', 'SGP', 'Singapore', 5638676),(20, 'Seoul', 'KOR', 'Seoul', 9761000),(21, 'Istanbul', 'TUR', 'Istanbul', 15030000),(22, 'Jakarta', 'IDN', 'Jakarta', 10187595),(23, 'Lima', 'PER', 'Lima', 9070000),(24, 'San Francisco', 'USA', 'California', 870887),(25, 'Chicago', 'USA', 'Illinois', 2714856),(26, 'Dubai', 'ARE', 'Dubai', 3331420),(27, 'Mexico City', 'MEX', 'CDMX', 8918653),(28, 'Melbourne', 'AUS', 'Victoria', 5083840),(29, 'Toronto', 'CAN', 'Ontario', 2731571),(30, 'Shanghai', 'CHN', 'Shanghai', 24150000),(31, 'Kolkata', 'IND', 'West Bengal', 4486679),(32, 'São Paulo', 'BRA', 'São Paulo', 11919000),(33, 'Barcelona', 'ESP', 'Catalonia', 1620343),(34, 'Tehran', 'IRN', 'Tehran', 8846783),(35, 'Beijing', 'CHN', 'Beijing', 21540000),(36, 'Shenzhen', 'CHN', 'Guangdong', 11200000),(37, 'Karachi', 'PAK', 'Sindh', 15700000),(38, 'Delhi', 'IND', 'Delhi', 16787941),(39, 'Hanoi', 'VNM', 'Hanoi', 7920000),(40, 'Warsaw', 'POL', 'Mazovia', 1790658),(41, 'Kuala Lumpur', 'MYS', 'Wilayah Persekutuan', 1762000);

create table STATION
(
	ID int not null,
	CITY varchar(21),
	STATE varchar(2),
	LAT_N int,
	LONG_W int
	primary key (ID)
)

INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) 
VALUES(1, 'New York', 'NY', 407, 740),(2, 'Los Angeles', 'CA', 339, 118),(3, 'Chicago', 'IL', 419, 876),(4, 'Houston', 'TX', 295, 951),(5, 'Phoenix', 'AZ', 334, 112),(6, 'Philadelphia', 'PA', 399, 751),(7, 'San Antonio', 'TX', 298, 984),(8, 'San Diego', 'CA', 329, 117),(9, 'Dallas', 'TX', 329, 966),(10, 'San Jose', 'CA', 371, 121),(11, 'Austin', 'TX', 302, 975),(12, 'Jacksonville', 'FL', 303, 814),(13, 'Fort Worth', 'TX', 324, 973),(14, 'Columbus', 'OH', 399, 831),(15, 'Indianapolis', 'IN', 398, 868),(16, 'Charlotte', 'NC', 358, 804),(17, 'San Francisco', 'CA', 374, 122),(18, 'Seattle', 'WA', 473, 122),(19, 'Denver', 'CO', 394, 105),(20, 'Washington', 'DC', 389, 770),(21, 'Boston', 'MA', 420, 711),(22, 'El Paso', 'TX', 315, 106),(23, 'Nashville', 'TN', 362, 868),(24, 'Detroit', 'MI', 423, 832),(25, 'Oklahoma City', 'OK', 355, 978),(26, 'Portland', 'OR', 455, 122),(27, 'Las Vegas', 'NV', 360, 116),(28, 'Memphis', 'TN', 358, 902),(29, 'Louisville', 'KY', 382, 853),(30, 'Baltimore', 'MD', 391, 765),(31, 'Milwaukee', 'WI', 430, 879),(32, 'Albuquerque', 'NM', 352, 106),(33, 'Tucson', 'AZ', 325, 111),(34, 'Fresno', 'CA', 364, 119),(35, 'Sacramento', 'CA', 384, 121),(36, 'Kansas City', 'MO', 394, 945),(37, 'Long Beach', 'CA', 333, 118),(38, 'Mesa', 'AZ', 334, 111),(39, 'Atlanta', 'GA', 339, 841),(40, 'Colorado Springs', 'CO', 388, 104),(41, 'Raleigh', 'NC', 358, 783),(42, 'Miami', 'FL', 254, 803),(43, 'Omaha', 'NE', 412, 963),(44, 'Minneapolis', 'MN', 450, 930),(45, 'Cleveland', 'OH', 411, 815),(46, 'Tulsa', 'OK', 360, 951),(47, 'New Orleans', 'LA', 299, 901),(48, 'Wichita', 'KS', 370, 974),(49, 'Arlington', 'TX', 329, 970),(50, 'Bakersfield', 'CA', 358, 119);
