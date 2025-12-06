create database olympiade;

use olympiade;

CREATE TABLE noc (
    NOC VARCHAR(10) PRIMARY KEY,
    region VARCHAR(255)
);

CREATE TABLE athletes (
    id_athlete INT,
    Name VARCHAR(255),
    Sex CHAR(1),
    Team VARCHAR(255),
    NOC VARCHAR(10),
    Games VARCHAR(50),
    Year INT,
    Season VARCHAR(10),
    City VARCHAR(100),
    Sport VARCHAR(100),
    Event VARCHAR(255),
    Medal VARCHAR(50),
    region VARCHAR(255),
    medal_score INT,
    FOREIGN KEY(NOC) REFERENCES noc(NOC)
);

LOAD DATA LOCAL INFILE 'C:\\Users\\pc\\Desktop\\Formation_DA7\\athlete_data_processed.csv'
INTO TABLE athletes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
 id_athlete,
 Name,
 Sex,
 Team,
 NOC,
 Games,
 Year,
 Season,
 City,
 Sport,
 Event,
 Medal,
 region,
 medal_score
);

CREATE TABLE wbd (
    country VARCHAR(100),
    year INT,
    NOC VARCHAR(10),
    total_medals INT,
    weighted_score DECIMAL(10,2) NULL,
    weighted_score_per_million DECIMAL(10,2) NULL,
    medals_per_urbanization DECIMAL(10,2) NULL,
    medals_per_density DECIMAL(10,2) NULL,
    medals_per_pib DECIMAL(15,2) NULL,
    weighted_score_per_pib_milliard DECIMAL(15,2) NULL,
    composite_efficiency_score DECIMAL(15,4) NULL,
    medals_per_gdp_per_capita DECIMAL(15,4) NULL,
    medals_per_working_population DECIMAL(15,4) NULL,
    medals_per_gdp_growth DECIMAL(15,4) NULL,
    medals_per_urban_density DECIMAL(15,4) NULL,
    female_athletes INT NULL,
    population_femmes BIGINT NULL,
    ratio_female_participation DECIMAL(10,4) NULL,
    total_athletes INT NULL,
    participation_rate_active_pop DECIMAL(10,6) NULL,
    FOREIGN KEY(NOC) REFERENCES noc(NOC)
);

LOAD DATA LOCAL INFILE 'C:\\Users\\pc\\Desktop\\Formation_DA7\\kpi_world_bank_data.csv'
INTO TABLE wbd
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(
 country,
 year,
 NOC,
 total_medals,
 weighted_score,
 weighted_score_per_million,
 medals_per_urbanization,
 medals_per_density,
 medals_per_pib,
 weighted_score_per_pib_milliard,
 composite_efficiency_score,
 medals_per_gdp_per_capita,
 medals_per_working_population,
 medals_per_gdp_growth,
 medals_per_urban_density,
 female_athletes,
 population_femmes,
 ratio_female_participation,
 total_athletes,
 participation_rate_active_pop
)
SET 
 total_medals = NULLIF(total_medals,''),
 weighted_score = NULLIF(weighted_score,''),
 weighted_score_per_million = NULLIF(weighted_score_per_million,''),
 medals_per_urbanization = NULLIF(medals_per_urbanization,''),
 medals_per_density = NULLIF(medals_per_density,''),
 medals_per_pib = NULLIF(medals_per_pib,''),
 weighted_score_per_pib_milliard = NULLIF(weighted_score_per_pib_milliard,''),
 composite_efficiency_score = NULLIF(composite_efficiency_score,''),
 medals_per_gdp_per_capita = NULLIF(medals_per_gdp_per_capita,''),
 medals_per_working_population = NULLIF(medals_per_working_population,''),
 medals_per_gdp_growth = NULLIF(medals_per_gdp_growth,''),
 medals_per_urban_density = NULLIF(medals_per_urban_density,''),
 female_athletes = NULLIF(female_athletes,''),
 population_femmes = NULLIF(population_femmes,''),
 ratio_female_participation = NULLIF(ratio_female_participation,''),
 total_athletes = NULLIF(total_athletes,''),
 participation_rate_active_pop = NULLIF(participation_rate_active_pop,'');

select count(*) from wbd;