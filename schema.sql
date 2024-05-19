--Create Company table
CREATE TABLE Company (
    Name VARCHAR(100) PRIMARY KEY,
    Email VARCHAR(50) NOT NULL,
    Contact_number VARCHAR(20)
);

-- Create Car_Category table
CREATE TABLE Car_Category (
    Category_No NUMBER(6) PRIMARY KEY,
    No_of_Seats NUMBER(2) DEFAULT (5) NOT NULL ,
    Mileage FLOAT,
    GearBox_type VARCHAR(20) NOT NULL,
    Number_of_Luggage NUMBER(3),
    Luggage_size VARCHAR(20)
);

-- Create Location table
CREATE TABLE Location (
    LatLong VARCHAR(50) PRIMARY KEY,
    Area_Name VARCHAR(100),
    Country VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Street VARCHAR(255),
    Postal_Code VARCHAR(20)
);
-- Create Discount table
CREATE TABLE Discount (
    Discount_code VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Percentage FLOAT NOT NULL,
    Start_Date DATE NOT NULL,
    Expired_Date DATE NOT NULL,
    Company_Name VARCHAR(100) NOT NULL,
    FOREIGN KEY (Company_Name) REFERENCES Company (Name) 
);

-- Create Car table
CREATE TABLE Car (
    car_id NUMBER(25) PRIMARY KEY,
    Car_availability NUMBER(25) DEFAULT 1 ,
    Price_Per_Day FLOAT NOT NULL,
    Rate FLOAT,
    Make VARCHAR(100) NOT NULL,
    Car_Model VARCHAR(100) NOT NULL,
    Year INT,
    Car_Type VARCHAR(50) NOT NULL,
    Color VARCHAR(50) NOT NULL,
    Category_No NUMBER(6) NOT NULL,
    Company_Name VARCHAR(100) NOT NULL,
    Location_LatLong VARCHAR(50) NOT NULL,
    FOREIGN KEY (Category_No) REFERENCES Car_Category (Category_No),
    FOREIGN KEY (Company_Name) REFERENCES Company (Name)  ,
    FOREIGN KEY (Location_LatLong) REFERENCES Location (LatLong)
);

-- Create Customer table
CREATE TABLE Customer (
    customer_id NUMBER(25) PRIMARY KEY,
    First_name VARCHAR(100) NOT NULL,
    Mid_name VARCHAR(100) ,
    Last_name VARCHAR(100) NOT NULL,
    DateOfBairth DATE NOT NULL,
    PhoneNo VARCHAR(20),
    Email VARCHAR(255) NOT NULL
);

--Create Rating table
CREATE TABLE Rating (
    customer_id NUMBER(25) NOT NULL,
    car_id NUMBER(25) NOT NULL,
    The_price NUMBER(2),
    Pick_up_speed NUMBER(2),
    Easy_to_find NUMBER(2),
    Drop_off_speed NUMBER(2),
    Car_cleanliness NUMBER(2),
    Helpfulness NUMBER(2),
    Car_condition NUMBER(2),
    PRIMARY KEY (customer_id, car_id),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (car_id) REFERENCES Car (car_id)
);



-- Create Booking table
CREATE TABLE Booking (
    Time_Stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    customer_id NUMBER(25) NOT NULL,
    car_id NUMBER(25) NOT NULL,
    Pick_up_Date DATE NOT NULL,
    Drop_down_Date DATE NOT NULL,
    Pick_up_time varchar(10) NOT NULL,
    Drop_down_time varchar(10) NOT NULL,
    Actual_Drop_down_Date_time TIMESTAMP,
    Cost FLOAT NOT NULL,
    Payment_Method VARCHAR(50),
    Pick_up_Location_LatLong VARCHAR(50) NOT NULL,
    Drop_down_Location_LatLong VARCHAR(50) NOT NULL,
    Discount_Location_Code VARCHAR(20),
    PRIMARY KEY (Time_Stamp, customer_id, car_id),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (car_id) REFERENCES Car (car_id),
    FOREIGN KEY (Pick_up_Location_LatLong) REFERENCES Location (LatLong),
    FOREIGN KEY (Drop_down_Location_LatLong) REFERENCES Location (LatLong),
    FOREIGN KEY (Discount_Location_Code) REFERENCES Discount (Discount_code)
);

-- Create Bill table
CREATE TABLE Bill (
    Bill_Number NUMBER(25) PRIMARY KEY,
    Bill_Date DATE NOT NULL, 
    Late_tax FLOAT ,
    Total_Fees FLOAT NOT NULL,
    Booking_Time_Stamp TIMESTAMP NOT NULL,
    Booking_Customer_id NUMBER(25) NOT NULL,
    Booking_Car_id NUMBER(25) NOT NULL,
    FOREIGN KEY (Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) REFERENCES Booking (Time_Stamp, customer_id, car_id)
);
