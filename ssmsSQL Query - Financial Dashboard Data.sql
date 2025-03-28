-- create database ccdb;
-- Creating table 
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(50),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date VARCHAR(50),
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit FLOAT,
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Vol INT,
    Avg_Utilization_Ratio FLOAT,
    [Use Chip] VARCHAR(50),
    [Exp Type] VARCHAR(50),
    Interest_Earned FLOAT,
    Delinquent_Acc INT
);

-- Then import the data
BULK INSERT cc_detail
FROM 'C:\Users\DELL\Downloads\Credit Card Financial Dashboard\credit_card.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- Skip header row
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001' -- UTF-8 encoding
);

select * from cc_detail;

-- Customer table 
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

BULK INSERT cust_detail
FROM 'C:\Users\DELL\Downloads\Credit Card Financial Dashboard\customer.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,  -- Skip header row
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001' -- UTF-8 encoding
);