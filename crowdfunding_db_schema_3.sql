CREATE TABLE Category (
    category_id VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255),
	email VARCHAR(255)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);
DROP TABLE Campaign

CREATE TABLE "campaign" (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(100)   NOT NULL,
    description text   NOT NULL,
    goal numeric(10,2)   NOT NULL,
    pledged numeric(10,2)   NOT NULL,
    outcome varchar(50)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(10)   NOT NULL,
    currency varchar(10)   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(10)   NOT NULL,
    subcategory_id varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

SELECT * FROM category;
SELECT * FROM Contacts; 
SELECT * FROM Subcategory; 
SELECT * FROM Campaign;
