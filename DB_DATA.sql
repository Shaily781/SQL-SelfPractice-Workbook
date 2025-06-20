--create db
CREATE DATABASE indian_states;
--use db
Use indian_states;
--create table
CREATE TABLE state_stats (
state VARCHAR(30),
region VARCHAR(15),
population_lakh INT,
area_km2 INT,
literacy_rate INT,
gdp_cr INT,
urbanization_pct FLOAT
);

--insert value

INSERT INTO state_stats VALUES
('Uttar Pradesh',   'North',      2240, 243286, 73, 184000, 22.3),
('Maharashtra',     'West',       1250, 307713, 83, 280000, 45.2),
('Bihar',           'East',       1300, 94163,  61, 77000,  11.3),
('West Bengal',     'East',        990, 88752,  77, 130000, 31.9),
('Madhya Pradesh',  'Central',     850, 308252, 70, 104000, 28.4),
('Rajasthan',       'North',       800, 342239, 67, 115000, 24.9),
('Tamil Nadu',      'South',       780, 130058, 82, 220000, 48.4),
('Karnataka',       'South',       700, 191791, 80, 175000, 39.0),
('Gujarat',         'West',        680, 196024, 79, 187000, 42.6),
('Andhra Pradesh',  'South',       530, 162968, 67, 115000, 29.5),
('Odisha',          'East',        470, 155707, 73, 74000,  16.7),
('Telangana',       'South',       400, 112077, 72, 115000, 46.6),
('Kerala',          'South',       350, 38852,  96, 92000,  47.7),
('Jharkhand',       'East',        385, 79714,  67, 62000,  24.1),
('Assam',           'North-East',  360, 78438,  73, 34000,  14.1),
('Punjab',          'North',       300, 50362,  77, 69000,  37.5),
('Chhattisgarh',    'Central',     295, 135192, 71, 43000,  23.2),
('Haryana',         'North',       282, 44212,  76, 90000,  34.9),
('Delhi',           'North',       190, 1484,   89, 97000,  97.5),
('Jammu & Kashmir', 'North',       135, 222236, 68, 23000,  27.2),
('Uttarakhand',     'North',       113, 53483,  79, 32000,  30.2),
('Himachal Pradesh','North',        75, 55673,  83, 18000,  10.0),
('Tripura',         'North-East',   41, 10492,  87, 4000,   26.2),
('Meghalaya',       'North-East',   38, 22429,  75, 3300,   20.3),
('Manipur',         'North-East',   31, 22327,  79, 3200,   30.1),
('Nagaland',        'North-East',   22, 16579,  80, 2800,   28.9),
('Goa',             'West',         16, 3702,   89, 8000,   62.2),
('Arunachal Pradesh','North-East',  14, 83743,  66, 3200,   22.7),
('Puducherry',      'South',        12, 479,    86, 2600,   68.3),
('Sikkim',          'North-East',    7, 7096,   82, 2200,   25.2),
('Mizoram',         'North-East',   12, 21081,  91, 2700,   51.5),
('Chandigarh',      'North',        12, 114,    87, 3200,   97.3),
('Ladakh',          'North',         3, 59146,  77, 1100,   34.5);

--verify
SELECT * FROM state_stats