--Creating the schema for all the tables for ETL

--Tables to create:
--Category
--Contacts
--Subcategory
--Campaign

--Category table with category_id as varchar primary key, category as varchar
CREATE TABLE Category (
    category_ID varchar(255) PRIMARY KEY,
    category varchar(255)
);

--Contacts table with contact_ID as int primary key, first_name varchar, last_name varchar, email varchar as columns
CREATE TABLE Contacts (
    contact_ID int PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255)
);

--Subcategory table with subcategory_ID as varchar primary key, subcategory as varchar
CREATE TABLE Subcategory (
    subcategory_ID varchar(255) PRIMARY KEY,
    subcategory varchar(255)
);

--Campaign table with following columns:
--campaign_ID as int primary key
--contact_ID as int foreign key to Contacts.contact_ID
--company_name varchar
--description varchar
--goal int
--pledged int
--backers_count int
--country varchar(2)
--currency varchar(3)
--launch_date datetime
--end_date datetime
--category_ID varchar foreign key to Category.category_ID
--subcategory_ID varchar foreign key to Subcategory.subcategory_ID
--sql:
CREATE TABLE Campaign (
    campaign_ID int PRIMARY KEY,
    contact_ID int,
    company_name varchar(255),
    description varchar(255),
    goal int,
    pledged int,
    backers_count int,
    country varchar(2),
    currency varchar(3),
    launch_date datetime,
    end_date datetime,
    category_ID varchar(255),
    subcategory_ID varchar(255),
    FOREIGN KEY (contact_ID) REFERENCES Contacts(contact_ID),
    FOREIGN KEY (category_ID) REFERENCES Category(category_ID),
    FOREIGN KEY (subcategory_ID) REFERENCES Subcategory(subcategory_ID)
);