SELECT * FROM contact_info WHERE contact_id = 4661;

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR
);

CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE contact_info (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR
);

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER REFERENCES contact_info(contact_id),
    company VARCHAR,
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR,
    backers_count INTEGER,
    country VARCHAR,
    currency VARCHAR,
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR REFERENCES category(category_id),
    subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);


SELECT * FROM campaign LIMIT 5;
SELECT * FROM category LIMIT 5;
SELECT * FROM contact_info LIMIT 5;
SELECT * FROM subcategory LIMIT 5;
