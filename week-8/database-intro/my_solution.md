## Select all data for all states.

SELECT * FROM states;

## Select all data for all regions.

SELECT * FROM regions;

## Select the state_name and population for all states.

SELECT state_name, population FROM states;

## Select the state_name and population for all states order by population. The state the the highest population should be at the top.

SELECT state_name, population FROM states
ORDER BY population DESC;

## Select the state_name from the states in region 7.

SELECT state_name FROM states WHERE region_id = 7;

## Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density;

## Select the state_name and region_id for states ordered by region in ascending order.

SELECT state_name, region_id FROM states WHERE 50 ORDERED BY region_id;

## Select the region_name for the regions with "Central" in the name.

SELECT region_name FROM regions WHERE region_name LIKE "%CENTRAL%";

## Select the region_name and teh state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables):

SELECT region_name, state_name
FROM states
LEFT JOIN regions
ON states.state_name=regions.region_name
ORDER BY region_id;

#### Images

![alt text](Schema.png "Logo Title Text 1")

##What are databases for?

Databases are for storing data, especially for large quantities of it.

##What is a one-to-many relationship?

A one-to-many relationship involves two columns between two tables. It allows the main table to correspond with another column of a related table.

##What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is the first column of the main table in the database. This allows that column correspond with another column. A foreign key is a column of information that exists within both tables.

![alt text](onetomany.png "One-to-Many, and Many-to-many")

##What is a one-to-one database?

They are databases that are used when they have a single relationship to one another. Something that typically is a pair.

##When would you use a one-to-one database? (Think generally, not in terms of the example you created).

They are created when their is a pair or is identicle to each other. Another reason I used it for was passwords that are stored in a secure database.

##What is a many-to-many database?

It is when both charts have multiples of the same items on their lists.

##When would you use a many-to-many database? (Think generally, not in terms of the example you created).

When you need to combine multiple columns to each other because there are many multiples of both columns in the db.

##What is confusing about database schemas? What makes sense?

I think that seeing and using them a little more will give me a better understand of how they work under the hood, but they were relatively intuitive so I don't think I have many questions just yet.