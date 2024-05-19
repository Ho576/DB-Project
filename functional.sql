-- when the customer inter the program the customer will search by location 
-- when the user enter the location the program will display the avilable car in this location
--for example the customer enter this data  'Central', 'USA', 'Los Angeles', 'Hollywood Blvd'
SELECT MAKE	,CAR_MODEL,YEAR,CAR_TYPE,COLOR,	COMPANY_NAME,RATE		
FROM Car
WHERE Location_LatLong IN (
    SELECT LatLong
    FROM Location
    WHERE Area_Name = 'Central' AND Country = 'USA' AND City = 'Los Angeles' AND Street = 'Hollywood Blvd'
)
and CAR_AVAILABILITY=1;

--if the customer select the car the catigoris will display

SELECT MAKE	,CAR_MODEL, PRICE_PER_DAY,	RATE, YEAR,	CAR_TYPE, COLOR, COMPANY_NAME,	NO_OF_SEATS, MILEAGE, GEARBOX_TYPE, NUMBER_OF_LUGGAGE,	LUGGAGE_SIZE
FROM Car natural join Car_Category
WHERE Location_LatLong IN (
    SELECT LatLong
    FROM Location
    WHERE Area_Name = 'Central' AND Country = 'USA' AND City = 'Los Angeles' AND Street = 'Hollywood Blvd'
)
and CAR_AVAILABILITY=1;


-- if the customer book the car then he should enter his information
-- if the customer insert his data (the customer id is National Identification Number and customer id praymary key then evry row is unique ) 
-- for example the customer enter 622133144, 'Rami', 'Ahmad', 'Abd Aljawad','1990-06-15', '5555-1234', 'Rami@example.com'
INSERT INTO Customer (customer_id, First_name, Mid_name, Last_name, DateOfBairth, PhoneNo, Email) VALUES (622133144, 'Rami', 'Ahmad', 'Abd Aljawad',Date '1990-06-15', '5555-1234', 'Rami@example.com');
--then
-- In the application level, during the reservation process, the value of the car and customer number will be taken by store it in varibles from the car and customer table, meaning that it will not be entered manually as now. 
 INSERT INTO Booking (Time_Stamp,customer_id, car_id, Pick_up_Date, Drop_down_Date, Pick_up_time, Drop_down_time, Cost, Payment_Method, Pick_up_Location_LatLong, Drop_down_Location_LatLong, Discount_Location_Code) VALUES
     (Timestamp '2023-12-20 10:00:00',622133144, 4,Date '2024-01-05',Date '2023-01-10', '14:00:00', '18:00:00', 180.0, 'Credit Card', '34.0522,-118.2437', '40.7128,-74.0060', 'DISC004');
-- if we not added time stamp the time stamp will take the defult value CURRENT_TIMESTAMP and this will hapent in real
--then
UPDATE Car
SET CAR_AVAILABILITY = 0
WHERE CAR_ID = 4;
--then we will create a bill the total fees will store in variables in application level and we do not make it derived attribute because we wont to stor it 
INSERT INTO Bill (Bill_Number, Bill_Date, Late_tax, Total_Fees, Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) VALUES (6,Date '2024-01-05',0, 232.0,Timestamp '2023-12-20 10:00:00' , 622133144, 4);
-- we should add CURRENT_TIMESTAMP

-- if the customer canceled the booking on email 
delete from Bill 
where Bill_Number =6 ;
--then 
delete from Booking 
WHERE Time_Stamp =Timestamp '2023-12-20 10:00:00'
  AND customer_id = 622133144
  AND car_id = 4;
--then
UPDATE Car
SET CAR_AVAILABILITY = 1
WHERE CAR_ID = 4;


--when the customer drop doen the car 
UPDATE Booking 
SET Actual_Drop_down_Date_time = TO_TIMESTAMP('25-DEC-23 10.46.12.670634 AM', 'DD-MON-RR HH.MI.SSXFF AM')
    -- we must set it CURRENT_TIMESTAMP but to set it work we will give it a value
WHERE Time_Stamp =Timestamp '2023-12-20 10:00:00'
  AND customer_id = 622133144
  AND car_id = 4;
--then
UPDATE Car
SET CAR_AVAILABILITY = 1
WHERE CAR_ID = 4;
--then if they have a late we will update late tax and and total fezz in the bill that have the number 6 











--function to  calculate the age of the customer and print the  customer information whose age > 18 ;
SELECT 
    customer_id ,
     First_name,
     Mid_name ,
     Last_name ,
     DateOfBairth ,
     PhoneNo ,
     Email ,
   
    TRUNC(MONTHS_BETWEEN(SYSDATE,DateOfBairth) / 12) AS age
FROM 
    Customer
WHERE 
    TRUNC(MONTHS_BETWEEN(SYSDATE,DateOfBairth) / 12) >= 18;


--return all the customer and booking details in specific car_id
SELECT *
FROM Customer 
NATURAL JOIN Booking  
WHERE car_id = 3;

-- select  the car_model and her average rating and the total number of booking made on it
SELECT 
    Car.Make,Car.Car_Model,
    ROUND(AVG((R.The_price + R.Pick_up_speed + R.Easy_to_find + R.Drop_off_speed + R.Car_cleanliness + R.Helpfulness + R.Car_condition) / 7), 2) AS Average_Rating,
    COUNT(B.car_id) AS Total_Bookings
FROM Car
LEFT JOIN Rating R ON Car.car_id = R.car_id
LEFT JOIN Booking B ON Car.car_id = B.car_id
GROUP BY Car.Car_Model,Car.Make ORDER BY Average_Rating desc

