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

create table STUDENTS
(
	ID int not null,
	Name varchar(100),
	Marks int,
	primary key (ID)
)

INSERT INTO STUDENTS (ID, Name, Marks) 
VALUES(1, 'Alice', '90'),(2, 'Bob', '85'),(3, 'Charlie', '88'),(4, 'David', '92'),(5, 'Eve', '75'),(6, 'Frank', '80'),(7, 'Grace', '95'),(8, 'Helen', '89'),(9, 'Ivy', '78'),(10, 'Jack', '84'),(11, 'Karen', '91'),(12, 'Leo', '85'),(13, 'Mona', '77'),(14, 'Nina', '93'),(15, 'Oscar', '90'),(16, 'Paul', '82'),(17, 'Quinn', '88'),(18, 'Rachel', '95'),(19, 'Sam', '80'),(20, 'Tina', '76'),(21, 'Uma', '92'),(22, 'Vera', '87'),(23, 'Walter', '81'),(24, 'Xander', '85'),(25, 'Yara', '90'),(26, 'Zane', '89'),(27, 'Adam', '83'),(28, 'Bella', '78'),(29, 'Carlos', '91'),(30, 'Diana', '84'),(31, 'Eli', '85'),(32, 'Fiona', '92'),(33, 'George', '76'),(34, 'Hannah', '93'),(35, 'Isaac', '88'),(36, 'Jasmine', '85'),(37, 'Keith', '91'),(38, 'Lily', '80'),(39, 'Mike', '89'),(40, 'Nadia', '87'),(41, 'Oliver', '79'),(42, 'Penny', '85'),(43, 'Quincy', '90'),(44, 'Riley', '82'),(45, 'Sophie', '91'),(46, 'Tom', '83'),(47, 'Ursula', '89'),(48, 'Vincent', '95'),(49, 'Wendy', '88'),(50, 'Xena', '80'),(51, 'Yvonne', '84'),(52, 'Zara', '92'),(53, 'Aidan', '78'),(54, 'Blake', '91'),(55, 'Cameron', '88'),(56, 'Daisy', '85'),(57, 'Evan', '76'),(58, 'Fay', '93'),(59, 'Gavin', '79'),(60, 'Holly', '92'),(61, 'Iris', '85'),(62, 'Jackie', '81'),(63, 'Kurt', '87'),(64, 'Lena', '83'),(65, 'Mason', '90'),(66, 'Nancy', '84'),(67, 'Oscar', '76'),(68, 'Parker', '92'),(69, 'Quinn', '88'),(70, 'Rebecca', '80'),(71, 'Seth', '95'),(72, 'Tracy', '85'),(73, 'Umar', '79'),(74, 'Valerie', '87'),(75, 'William', '82'),(76, 'Xander', '91'),(77, 'Yasmine', '88'),(78, 'Zane', '76'),(79, 'Ava', '92'),(80, 'Blair', '85'),(81, 'Chloe', '89'),(82, 'Dean', '83'),(83, 'Emily', '91'),(84, 'Frankie', '80'),(85, 'Grace', '93'),(86, 'Harrison', '76'),(87, 'Isabella', '85'),(88, 'Jake', '79'),(89, 'Liam', '92'),(90, 'Mia', '91'),(91, 'Nina', '83'),(92, 'Oscar', '84'),(93, 'Piper', '79'),(94, 'Quinn', '88'),(95, 'Riley', '95'),(96, 'Sara', '80'),(97, 'Tyler', '89'),(98, 'Uma', '92'),(99, 'Violet', '91'),(100, 'Will', '85');

create table Employee 
(
    employee_id int not null,
    name varchar(100),
    months int,
    salary int,
    primary key (employee_id)
)

INSERT INTO Employee (employee_id, name, months, salary) 
VALUES (330, 'Rose', 5, 2248), (1233, 'Angela', 7, 1296), (1901, 'Frank', 10, 2763), (2035, 'Patrick', 1, 4583), (2974, 'Kimberly', 11, 2874), (3190, 'Bonnie', 11, 3758), (3506, 'Michael', 9, 1936), (3708, 'Todd', 22, 4046), (4428, 'Joe', 22, 3802), (5962, 'Earl', 11, 2958), (6060, 'Robert', 22, 4128), (6418, 'Amy', 2, 4832), (7466, 'Pamela', 1, 4199), (9102, 'Maria', 11, 2958), (11863, 'Joe', 18, 1721), (12004, 'Linda', 15, 2306), (12387, 'Melissa', 20, 1854), (13835, 'Carol', 20, 4340), (15151, 'Paula', 15, 1526), (15286, 'Marilyn', 10, 3087), (15675, 'Jennifer', 2, 2336), (16493, 'Harry', 14, 4755), (17858, 'David', 13, 3658), (19035, 'Julia', 4, 2195), (19172, 'Kevin', 1, 2113), (21638, 'Paul', 6, 3120), (22684, 'James', 14, 1370), (23621, 'Kelly', 7, 1923), (24011, 'Robin', 22, 1880), (24611, 'Ralph', 22, 1495), (25109, 'Gloria', 2, 1979), (25120, 'Victor', 20, 1557), (28247, 'David', 23, 2212), (30183, 'Joyce', 20, 2748), (30712, 'Donna', 8, 2604), (32502, 'Michelle', 1, 2086), (32654, 'Stephanie', 17, 1444), (33086, 'Gerald', 23, 2206), (33132, 'Walter', 11, 4180), (37008, 'Christina', 8, 3100), (38246, 'Brandon', 3, 4339), (38272, 'Elizabeth', 23, 3967), (38964, 'Joseph', 4, 2194), (39789, 'Lawrence', 9, 1872), (40797, 'Marilyn', 15, 2112), (41228, 'Lori', 13, 4350), (44436, 'Matthew', 15, 4673), (45285, 'Jesse', 1, 3768), (47458, 'John', 13, 3104), (47496, 'Martha', 15, 4020), (47920, 'Timothy', 10, 1745), (48129, 'Christine', 22, 3738), (50664, 'Anthony', 22, 4912), (51741, 'Paula', 1, 2492), (52923, 'Kimberly', 17, 1955), (55238, 'Louise', 1, 2717), (56775, 'Martin', 16, 1385), (57065, 'Paul', 23, 3379), (58343, 'Antonio', 21, 3268), (59256, 'Jacqueline', 14, 3913), (60119, 'Diana', 13, 5149), (61191, 'John', 5, 1775), (65288, 'Dorothy', 22, 3792), (65375, 'Evelyn', 6, 4079), (66442, 'Phillip', 9, 1894), (67137, 'Evelyn', 15, 1311), (68942, 'Debra', 20, 3704), (69085, 'David', 11, 1845), (69234, 'Willie', 12, 5088), (69475, 'Brandon', 19, 2279), (69787, 'Ann', 9, 1311), (70963, 'Emily', 8, 5247), (71569, 'Dorothy', 22, 4088), (72030, 'Jonathan', 4, 5009), (72370, 'Dorothy', 18, 3174), (72785, 'Marilyn', 1, 1860), (72974, 'Norma', 21, 1558), (74662, 'Nancy', 6, 3223), (76876, 'Andrew', 11, 1746), (77609, 'Keith', 2, 1219), (78101, 'Benjamin', 7, 4414), (79744, 'Charles', 11, 1911), (80475, 'Alan', 16, 1853), (80895, 'Tammy', 8, 1591), (81381, 'Anna', 16, 1569), (82828, 'James', 23, 4398), (85287, 'Robin', 23, 2078), (87170, 'Jean', 18, 3895), (87355, 'Andrew', 15, 1446), (89017, 'Roy', 8, 3443), (90507, 'Diana', 9, 5101), (90558, 'Christina', 23, 3498), (92908, 'Jesse', 13, 4753), (95322, 'Joyce', 18, 1577), (95983, 'Patricia', 23, 1469), (96963, 'Gregory', 16, 5071), (97178, 'Brian', 19, 3144), (98271, 'Christine', 3, 3796), (98491, 'Lillian', 3, 1920), (98765, 'Clara', 13, 2350), (87654, 'Eleanor', 4, 1780), (76543, 'Samuel', 9, 2700), (65432, 'Jameson', 8, 2499), (54321, 'Olivia', 6, 3150), (43210, 'George', 7, 2298), (32109, 'Sarah', 2, 2785), (21098, 'Tyler', 12, 3157), (10987, 'Monica', 11, 2901), (9876, 'Oscar', 5, 2632), (8765, 'Zoe', 10, 3451), (7654, 'Luca', 16, 3704), (6543, 'Sophia', 14, 2389), (5432, 'Evan', 13, 3990), (4321, 'Mia', 3, 3000), (3210, 'Jackson', 9, 2852), (2109, 'Ella', 20, 3155), (1098, 'Leah', 18, 4210), (987, 'Matthew', 4, 1870), (876, 'Catherine', 17, 2354), (765, 'Benjamin', 6, 2795), (654, 'Grace', 22, 4000), (543, 'Ethan', 7, 3550), (432, 'Ivy', 9, 3600), (321, 'Gavin', 2, 2840), (210, 'Isabelle', 10, 3250), (109, 'Daniel', 11, 3400), (98, 'Natalie', 8, 3145), (87, 'Jack', 13, 2950), (76, 'Lucas', 16, 2675), (65, 'Rachel', 1, 3020), (54, 'Sophia', 14, 3290), (43, 'Lily', 19, 3820), (32, 'Dylan', 6, 2295), (21, 'Zachary', 10, 2465), (10, 'Eli', 3, 3070), (123, 'Hailey', 7, 3240), (234, 'Chloe', 8, 2398), (345, 'Julian', 5, 3155), (456, 'Nolan', 9, 3205), (567, 'Emma', 4, 2155), (678, 'Kyle', 16, 2960), (789, 'Charlotte', 11, 3415), (890, 'Aiden', 2, 2700), (901, 'Levi', 18, 3335), (1011, 'Addison', 3, 2565), (1122, 'Sebastian', 14, 3390), (1234, 'Maverick', 6, 2880), (1345, 'Lily', 5, 2495), (1456, 'Jonas', 10, 3000), (1567, 'Victoria', 12, 2750), (1678, 'Mason', 15, 3300), (1789, 'Aria', 9, 3505), (1890, 'Charlotte', 17, 3650), (2001, 'Dante', 19, 3925), (2102, 'Eleanor', 8, 3270), (2203, 'Freddie', 3, 2850), (2304, 'Sienna', 11, 2915), (2405, 'Gabriel', 18, 3375), (2506, 'Katherine', 10, 3200), (2607, 'Peter', 5, 3100), (2708, 'Emilia', 13, 3450), (2809, 'Zoe', 12, 3260), (2901, 'Alex', 8, 2695), (3002, 'Rachel', 14, 3100), (3103, 'Adam', 6, 3155), (3204, 'Eve', 15, 3245), (3305, 'John', 9, 2800), (3406, 'Nina', 10, 3350), (3507, 'Shane', 11, 3455), (3608, 'Briana', 14, 3010), (3709, 'Parker', 8, 3275), (3801, 'Charlotte', 19, 3520), (3902, 'Matthew', 13, 2895), (4003, 'Aidan', 16, 2895), (4104, 'Riley', 20, 3980), (4205, 'Benjamin', 7, 3280), (4306, 'Carmen', 8, 3400), (4407, 'Olivia', 12, 3120), (4508, 'Amelia', 14, 2975), (4609, 'Nicholas', 16, 3710), (4710, 'Caleb', 18, 3605); 




------------------------------
SELECT name 
FROM sys.tables;

drop table STUDENTS;

