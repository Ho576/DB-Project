-- Company INSERT
INSERT INTO Company (Name, Email, Contact_number) VALUES('UMT Motors', 'abc@example.com', '123-456-7890');
INSERT INTO Company (Name, Email, Contact_number) VALUES('XYZ Rentals', 'xyz@example.com', '987-654-3210');
INSERT INTO Company (Name, Email, Contact_number) VALUES('CarCo', 'carco@example.com', '111-222-3333');
INSERT INTO Company (Name, Email, Contact_number) VALUES('DriveEasy', 'driveeasy@example.com', '444-555-6666');
INSERT INTO Company (Name, Email, Contact_number) VALUES('SwiftRide', 'swiftride@example.com', '777-888-9999');


-- Car_Category  INSERT
INSERT INTO Car_Category (Category_No, No_of_Seats, Mileage, GearBox_type, Number_of_Luggage, Luggage_size) VALUES (1, 5, 30.5, 'Automatic', 2, 'Medium');
INSERT INTO Car_Category (Category_No, No_of_Seats, Mileage, GearBox_type, Number_of_Luggage, Luggage_size) VALUES (2, 4, 25.0, 'Manual', 1, 'Small');
INSERT INTO Car_Category (Category_No, No_of_Seats, Mileage, GearBox_type, Number_of_Luggage, Luggage_size) VALUES (3, 7, 20.0, 'Automatic', 3, 'Large');
INSERT INTO Car_Category (Category_No, No_of_Seats, Mileage, GearBox_type, Number_of_Luggage, Luggage_size) VALUES (4, 2, 35.0, 'Manual', 1, 'Small');
INSERT INTO Car_Category (Category_No, No_of_Seats, Mileage, GearBox_type, Number_of_Luggage, Luggage_size) VALUES (5, 5, 28.0, 'Automatic', 2, 'Medium');



--  Location  INSERT
INSERT INTO Location (LatLong, Area_Name, Country, City, Street, Postal_Code) VALUES ('40.7128,-74.0060', 'Downtown', 'USA', 'New York', 'Broadway', '10001');
INSERT INTO Location (LatLong, Area_Name, Country, City, Street, Postal_Code) VALUES ('34.0522,-118.2437', 'Central', 'USA', 'Los Angeles', 'Hollywood Blvd', '90028');
INSERT INTO Location (LatLong, Area_Name, Country, City, Street, Postal_Code) VALUES ('51.5099,-0.1333', 'City Center', 'UK', 'London', 'Oxford Street', 'W1A 1AA');
INSERT INTO Location (LatLong, Area_Name, Country, City, Street, Postal_Code) VALUES ('48.8566,2.3522', 'City Centre', 'France', 'Paris', 'Champs-Élysées', '75008');
INSERT INTO Location (LatLong, Area_Name, Country, City, Street, Postal_Code) VALUES ('35.6895,139.6917', 'Downtown', 'Japan', 'Tokyo', 'Shibuya Crossing', '150-0043');



-- Car  INSERT

INSERT INTO Car (car_id, Car_availability, Price_Per_Day, Rate, Make, Car_Model, Year, Car_Type, Color, Category_No, Company_Name, Location_LatLong) VALUES (1, 1, 5000.0, 10, 'Volkswagen', 'Polo', 2020, 'hatchbag', 'orange', 1, 'UMT Motors', '40.7128,-74.0060');
INSERT INTO Car (car_id, Car_availability, Price_Per_Day, Rate, Make, Car_Model, Year, Car_Type, Color, Category_No, Company_Name, Location_LatLong) VALUES (2, 1, 60.0, 8.8, 'Honda', 'Civic', 2022, 'Sedan', 'Red', 2, 'XYZ Rentals', '34.0522,-118.2437');
INSERT INTO Car (car_id, Car_availability, Price_Per_Day, Rate, Make, Car_Model, Year, Car_Type, Color, Category_No, Company_Name, Location_LatLong) VALUES (3, 1, 70.0, 7.7, 'Ford', 'Explorer', 2022, 'SUV', 'Black', 3, 'CarCo', '51.5099,-0.1333');
INSERT INTO Car (car_id, Car_availability, Price_Per_Day, Rate, Make, Car_Model, Year, Car_Type, Color, Category_No, Company_Name, Location_LatLong) VALUES (4, 1, 45.0, 6.2, 'Chevrolet', 'Spark', 2022, 'Compact', 'Yellow', 4, 'DriveEasy', '48.8566,2.3522');
INSERT INTO Car (car_id, Car_availability, Price_Per_Day, Rate, Make, Car_Model, Year, Car_Type, Color, Category_No, Company_Name, Location_LatLong) VALUES (5, 1, 55.0, 6.6, 'Nissan', 'Altima', 2022, 'Sedan', 'Silver', 5, 'SwiftRide', '35.6895,139.6917');



-- Discount  INSERT

INSERT INTO Discount (Discount_code, Name, Percentage, Start_Date, Expired_Date, Company_Name) VALUES ('DISC001', 'Early Bird', 10.0, Date '2023-01-01', Date '2023-12-31', 'UMT Motors');
INSERT INTO Discount (Discount_code, Name, Percentage, Start_Date, Expired_Date, Company_Name) VALUES ('DISC002', 'Weekend Special', 15.0, Date '2023-01-01', Date '2023-12-31', 'XYZ Rentals');
INSERT INTO Discount (Discount_code, Name, Percentage, Start_Date, Expired_Date, Company_Name) VALUES ('DISC003', 'Frequent Renter', 12.0, Date '2023-01-01', Date '2023-12-31', 'CarCo');
INSERT INTO Discount (Discount_code, Name, Percentage, Start_Date, Expired_Date, Company_Name) VALUES ('DISC004', 'Holiday Promo', 20.0, Date '2023-12-20', Date '2023-12-31', 'DriveEasy');
INSERT INTO Discount (Discount_code, Name, Percentage, Start_Date, Expired_Date, Company_Name) VALUES ('DISC005', 'New Year Discount', 18.0, Date '2023-01-01',Date '2023-01-10', 'SwiftRide');



-- Customer  INSERT

INSERT INTO Customer (customer_id, First_name, Mid_name, Last_name, DateOfBairth, PhoneNo, Email) VALUES (122133144, 'Elon', 'A', 'Musk',Date '1990-05-15', '555-1234', 'john.doe@example.com');
INSERT INTO Customer (customer_id, First_name, Mid_name, Last_name, DateOfBairth, PhoneNo, Email) VALUES (222133144, 'Khaled', 'B', 'Alabed',Date '1985-12-20', '555-5678', 'jane.smith@example.com');
INSERT INTO Customer (customer_id, First_name, Mid_name, Last_name, DateOfBairth, PhoneNo, Email) VALUES (322133144, 'Reem', 'C', 'Ali',Date '1995-08-10', '555-9876', 'michael.j@example.com');
INSERT INTO Customer (customer_id, First_name, Mid_name, Last_name, DateOfBairth, PhoneNo, Email) VALUES (422133144, 'Emily', 'D', 'Davis',Date '1988-04-02', '555-4321', 'emily.d@example.com');
INSERT INTO Customer (customer_id, First_name, Mid_name, Last_name, DateOfBairth, PhoneNo, Email) VALUES (522133144, 'Mays', 'E', 'Miller',Date '2019-11-1', '555-8765', 'david.m@example.com');



-- Rating INSERT

INSERT INTO Rating (customer_id, car_id, The_price, Pick_up_speed, Easy_to_find, Drop_off_speed, Car_cleanliness, Helpfulness, Car_condition) VALUES (122133144, 1, 10, 10, 10, 10, 10, 10, 10);
INSERT INTO Rating (customer_id, car_id, The_price, Pick_up_speed, Easy_to_find, Drop_off_speed, Car_cleanliness, Helpfulness, Car_condition) VALUES (222133144, 2, 5, 4, 5, 3, 4, 5, 4);
INSERT INTO Rating (customer_id, car_id, The_price, Pick_up_speed, Easy_to_find, Drop_off_speed, Car_cleanliness, Helpfulness, Car_condition) VALUES (322133144, 3, 4, 3, 4, 5, 3, 4, 3);
INSERT INTO Rating (customer_id, car_id, The_price, Pick_up_speed, Easy_to_find, Drop_off_speed, Car_cleanliness, Helpfulness, Car_condition) VALUES (422133144, 4, 3, 5, 3, 4, 4, 3, 5);
INSERT INTO Rating (customer_id, car_id, The_price, Pick_up_speed, Easy_to_find, Drop_off_speed, Car_cleanliness, Helpfulness, Car_condition) VALUES (522133144, 5, 5, 4, 5, 4, 5, 5, 4);



-- Booking  INSERT

INSERT INTO Booking (Time_Stamp, customer_id, car_id, Pick_up_Date, Drop_down_Date, Pick_up_time, Drop_down_time, Actual_Drop_down_Date_time, Cost, Payment_Method, Pick_up_Location_LatLong, Drop_down_Location_LatLong, Discount_Location_Code) VALUES
(TIMESTAMP '2023-01-01 10:00:00', 122133144, 1,Date '2023-01-05',Date '2023-01-10', '10:00:00', '14:00:00',TIMESTAMP '2023-01-10 14:00:00', 200.0, 'Credit Card', '40.7128,-74.0060', '34.0522,-118.2437', 'DISC001');

INSERT INTO Booking (Time_Stamp, customer_id, car_id, Pick_up_Date, Drop_down_Date, Pick_up_time, Drop_down_time, Actual_Drop_down_Date_time, Cost, Payment_Method, Pick_up_Location_LatLong, Drop_down_Location_LatLong, Discount_Location_Code) VALUES
    (TIMESTAMP '2023-02-01 10:00:00', 222133144, 2,Date '2023-02-05',Date '2023-02-10', '10:00:00', '14:00:00',TIMESTAMP '2023-02-10 14:00:00', 250.0, 'Debit Card', '34.0522,-118.2437', '40.7128,-74.0060', 'DISC002');

INSERT INTO Booking (Time_Stamp, customer_id, car_id, Pick_up_Date, Drop_down_Date, Pick_up_time, Drop_down_time, Actual_Drop_down_Date_time, Cost, Payment_Method, Pick_up_Location_LatLong, Drop_down_Location_LatLong, Discount_Location_Code) VALUES
    (TIMESTAMP '2023-03-01 12:00:00', 322133144, 3,Date '2023-03-05',Date '2023-03-10', '12:00:00', '16:00:00',TIMESTAMP '2023-03-10 16:00:00', 300.0, 'Cash', '51.5099,-0.1333', '48.8566,2.3522', 'DISC003');

INSERT INTO Booking (Time_Stamp, customer_id, car_id, Pick_up_Date, Drop_down_Date, Pick_up_time, Drop_down_time, Actual_Drop_down_Date_time, Cost, Payment_Method, Pick_up_Location_LatLong, Drop_down_Location_LatLong, Discount_Location_Code) VALUES
    (TIMESTAMP '2023-04-01 14:00:00', 422133144, 4,Date '2023-04-05',Date '2023-04-10', '14:00:00', '18:00:00',TIMESTAMP '2023-04-10 18:00:00', 180.0, 'Credit Card', '48.8566,2.3522', '51.5099,-0.1333', 'DISC004');

INSERT INTO Booking (Time_Stamp, customer_id, car_id, Pick_up_Date, Drop_down_Date, Pick_up_time, Drop_down_time, Actual_Drop_down_Date_time, Cost, Payment_Method, Pick_up_Location_LatLong, Drop_down_Location_LatLong, Discount_Location_Code) VALUES
    (TIMESTAMP '2023-05-01 16:00:00', 522133144, 5,Date '2023-05-05',Date '2023-05-10', '16:00:00', '20:00:00',TIMESTAMP '2023-05-10 20:00:00', 220.0, 'Debit Card', '35.6895,139.6917', '40.7128,-74.0060', 'DISC005');




-- Bill  INSERT

INSERT INTO Bill (Bill_Number, Bill_Date, Late_tax, Total_Fees, Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) VALUES (1,Date '2023-01-10', 10.0, 210.0,TIMESTAMP '2023-01-01 10:00:00', 122133144, 1);
INSERT INTO Bill (Bill_Number, Bill_Date, Late_tax, Total_Fees, Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) VALUES (2,Date '2023-02-10', 15.0, 265.0,TIMESTAMP '2023-02-01 10:00:00', 222133144, 2);
INSERT INTO Bill (Bill_Number, Bill_Date, Late_tax, Total_Fees, Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) VALUES (3,Date '2023-03-10', 20.0, 320.0,TIMESTAMP '2023-03-01 12:00:00', 322133144, 3);
INSERT INTO Bill (Bill_Number, Bill_Date, Late_tax, Total_Fees, Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) VALUES (4,Date '2023-04-10', 5.0, 185.0,TIMESTAMP '2023-04-01 14:00:00', 422133144, 4);
INSERT INTO Bill (Bill_Number, Bill_Date, Late_tax, Total_Fees, Booking_Time_Stamp, Booking_Customer_id, Booking_Car_id) VALUES (5,Date '2023-05-10', 12.0, 232.0,TIMESTAMP '2023-05-01 16:00:00', 522133144, 5);

