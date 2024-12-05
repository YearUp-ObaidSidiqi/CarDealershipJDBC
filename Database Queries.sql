

# ---------------------------------------------------------------------- #
# Add table "Dealership"                                                 #
# ---------------------------------------------------------------------- #
CREATE TABLE Dealerships (
    DealershipID INTEGER AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Phone VARCHAR(20) NOT NULL
);

# ---------------------------------------------------------------------- #
# Add table "Vehicles"                                                   #
# ---------------------------------------------------------------------- #
CREATE TABLE Vehicles (
    VehicleVIN INT PRIMARY KEY,
    Year INT NOT NULL,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    VehicleType VARCHAR(50) NOT NULL,
    Color VARCHAR(50) NOT NULL,
    Odometer INT NOT NULL,
    Price DOUBLE NOT NULL
);

# ---------------------------------------------------------------------- #
# Add table "Inventory"                                                  #
# ---------------------------------------------------------------------- #
CREATE TABLE Inventory (
    DealershipID INT NOT NULL,
    VehicleVIN INT NOT NULL,
    PRIMARY KEY (DealershipID, VehicleVIN), -- Ensures each dealership-VIN combination is unique
    FOREIGN KEY (DealershipID) REFERENCES Dealerships(DealershipID),
    FOREIGN KEY (VehicleVIN) REFERENCES Vehicles(VehicleVIN)
);

# ---------------------------------------------------------------------- #
# Add table "Sales_Contracts"                                            #
# ---------------------------------------------------------------------- #
CREATE TABLE SalesContract (
    SalesContractID INT AUTO_INCREMENT PRIMARY KEY,
    ContractDate VARCHAR(60) NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    CustomerEmail VARCHAR(100) NOT NULL,
    VehicleVIN INT NOT NULL,
    VehicleColor VARCHAR(50) NOT NULL,
    VehicleMiles INT NOT NULL,
    VehiclePrice DOUBLE NOT NULL,
    SalesContractTaxes DOUBLE NOT NULL,
    SalesContractRecordingFee DOUBLE NOT NULL,
    SalesContractProcessingFee DOUBLE NOT NULL,
    TotalPrice DOUBLE NOT NULL,
    MonthlyPayment DOUBLE NOT NULL,
    isFinance BOOLEAN NOT NULL,
    FOREIGN KEY (VehicleVIN) REFERENCES Vehicles(VehicleVIN) -- Ensures the vehicle exists in inventory before it can be sold
);

# ---------------------------------------------------------------------- #
# Add table "Lease_Contracts"                                            #
# ---------------------------------------------------------------------- #
CREATE TABLE LeaseContract (
    LeaseContractID INT AUTO_INCREMENT PRIMARY KEY,
    ContractDate VARCHAR(60) NOT NULL,
    CustomerName VARCHAR(100) NOT NULL,
    CustomerEmail VARCHAR(100) NOT NULL,
    VehicleVIN INT NOT NULL,
    VehicleColor VARCHAR(50) NOT NULL,
    VehicleMiles INT NOT NULL,
    VehiclePrice DOUBLE NOT NULL,
    LeaseContractExpectedFinalValue DOUBLE NOT NULL,
    LeaseContractLeaseFee DOUBLE NOT NULL,
    TotalPrice DOUBLE NOT NULL,
    MonthlyPayment DOUBLE NOT NULL,
    FOREIGN KEY (VehicleVIN) REFERENCES Vehicles(VehicleVIN)
);

-- Data Injection ! 

# ---------------------------------------------------------------------- #
# Add info into "Dealerships"                                            #
# ---------------------------------------------------------------------- #
INSERT INTO Dealerships (Name, Address, Phone)
VALUES
('D & B Used Cars', '111 Old Benbrook Rd', '817-555-5555'),
('Turkey Used Cars', '123 Turkey Roast St', '122-223-4455'),
('Loud Used Cars', '834 Noisy Blvd', '987-654-3211');


# ---------------------------------------------------------------------- #
# Add info into "Vehicle"                                                #
# ---------------------------------------------------------------------- #
INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, Price)
VALUES
(10001, 2021, 'Ford', 'Mustang', 'Coupe', 'Red', 12000, 25000.0),
(10005, 2020, 'BMW', '3 Series', 'Sedan', 'Blue', 15000, 35000.0),
(10010, 2022, 'Audi', 'A6', 'Sedan', 'Silver', 10000, 42000.0),
(10020, 2021, 'Ford', 'F-150', 'Truck', 'Black', 18000, 29000.0),
(10015, 2020, 'Dodge', 'Challenger', 'Coupe', 'Green', 22000, 40000.0),
(10025, 2023, 'Audi', 'Q5', 'SUV', 'White', 7000, 55000.0),
(10018, 2022, 'BMW', 'X3', 'SUV', 'Red', 12000, 43000.0),
(10007, 2020, 'Dodge', 'Durango', 'SUV', 'Yellow', 16000, 38000.0),
(10030, 2019, 'Toyota', 'Corolla', 'Sedan', 'White', 25000, 9500.0),
(10031, 2018, 'Honda', 'Civic', 'Coupe', 'Blue', 30000, 8500.0),
(10032, 2020, 'Ford', 'Fiesta', 'Hatchback', 'Red', 15000, 9200.0),
(10033, 2019, 'Hyundai', 'Elantra', 'Sedan', 'Silver', 20000, 8700.0),
(10034, 2017, 'Chevrolet', 'Spark', 'Compact', 'Green', 35000, 8900.0),
(37846, 2021, 'Chevrolet', 'Silverado', 'Truck', 'Black', 2750, 31995.0),
(78423, 2020, 'Toyota', 'Corolla', 'Sedan', 'White', 32000, 18999.0),
(48912, 2018, 'Ford', 'Explorer', 'SUV', 'Blue', 15000, 25999.0),
(56234, 2022, 'Honda', 'Civic', 'Coupe', 'Gray', 12000, 24999.0),
(87456, 2019, 'Tesla', 'Model 3', 'Electric', 'Red', 2000, 35999.0),
(63921, 2021, 'BMW', 'X5', 'SUV', 'Black', 5000, 49999.0),
(75641, 2020, 'Jeep', 'Wrangler', 'Off-road', 'Green', 25000, 31999.0),
(12389, 2023, 'Audi', 'A4', 'Sedan', 'White', 8000, 41999.0);



# ---------------------------------------------------------------------- #
# Add info into "Inventory"                                              #
# ---------------------------------------------------------------------- #

INSERT INTO Inventory (DealershipID, VehicleVIN)
VALUES 
(1, 10001),
(1, 10005),
(1, 10010),
(1, 10020),
(1, 10015),
(2, 10025),
(2, 10018),
(2, 10007),
(2, 10030),
(2, 10031),
(3, 10032),
(3, 10033),
(3, 10034),
(3, 37846),
(3, 78423),
(1, 48912),
(1, 56234),
(2, 87456),
(2, 63921),
(3, 75641),
(3, 12389);

# ---------------------------------------------------------------------- #
# Add info into "SalesContracts"                                         # 
# ---------------------------------------------------------------------- #
INSERT INTO SalesContract (ContractDate, CustomerName, CustomerEmail, VehicleVIN, VehicleColor, VehicleMiles, VehiclePrice, SalesContractTaxes, SalesContractRecordingFee, SalesContractProcessingFee, TotalPrice, MonthlyPayment, isFinance)
VALUES
('2024-11-01', 'John Doe', 'john.doe@email.com', 10001, 'Red', 12000, 25000.0, 2000.0, 50.0, 150.0, 26650.0, 648.45, TRUE),
('2024-11-03', 'Alice Smith', 'alice.smith@email.com', 10005, 'Blue', 15000, 35000.0, 2800.0, 60.0, 200.0, 36855.0, 0.0, FALSE),
('2024-11-04', 'Bob Johnson', 'bob.johnson@email.com', 10010, 'Silver', 10000, 42000.0, 3000.0, 55.0, 170.0, 44205.0, 1066.71, TRUE),
('2024-11-06', 'Maria Garcia', 'maria.garcia@email.com', 10020, 'Black', 18000, 29000.0, 2300.0, 45.0, 120.0, 30555.0, 0.0, FALSE),
('2024-11-07', 'James Wilson', 'james.wilson@email.com', 10015, 'Green', 22000, 40000.0, 3200.0, 65.0, 180.0, 42105.0, 1016.68, TRUE),
('2024-11-09', 'Emily Brown', 'emily.brown@email.com', 10025, 'White', 7000, 55000.0, 4400.0, 70.0, 200.0, 57855.0, 1391.93, TRUE),
('2024-11-11', 'Michael Lee', 'michael.lee@email.com', 10018, 'Red', 12000, 43000.0, 3500.0, 60.0, 170.0, 45255.0, 0.0, FALSE),
('2024-11-12', 'Sophia Taylor', 'sophia.taylor@email.com', 10007, 'Yellow', 16000, 38000.0, 3000.0, 50.0, 140.0, 40005.0, 966.65, TRUE),
('2024-11-13', 'Emma Johnson', 'emma.johnson@email.com', 10030, 'White', 25000, 9500.0, 700.0, 30.0, 100.0, 9895.0, 474.35, TRUE),
('2024-11-14', 'Liam Smith', 'liam.smith@email.com', 10031, 'Blue', 30000, 8500.0, 650.0, 25.0, 120.0, 8895.0, 0.0, FALSE),
('2024-11-15', 'Olivia Brown', 'olivia.brown@email.com', 10032, 'Red', 15000, 9200.0, 690.0, 28.0, 110.0, 9595.0, 460.5, TRUE),
('2024-11-16', 'Noah Davis', 'noah.davis@email.com', 10033, 'Silver', 20000, 8700.0, 610.0, 27.0, 115.0, 9095.0, 0.0, FALSE),
('2024-11-17', 'Ava Wilson', 'ava.wilson@email.com', 10034, 'Green', 35000, 8900.0, 620.0, 25.0, 105.0, 9295.0, 446.64, TRUE);


# ---------------------------------------------------------------------- #
# Add info into "LeaseContracts"                                         #
# ---------------------------------------------------------------------- #
INSERT INTO LeaseContract (ContractDate, CustomerName, CustomerEmail, VehicleVIN, VehicleColor, VehicleMiles, VehiclePrice, LeaseContractExpectedFinalValue, LeaseContractLeaseFee, TotalPrice, MonthlyPayment)
VALUES 
('2024-10-01', 'Zachary Westly', 'zach@texas.com', 37846, 'Black', 2750, 31995.0, 15997.50, 2239.65, 18337.15, 541.39),
('2024-11-10', 'Emily Johnson', 'emily.johnson@gmail.com', 78423, 'White', 32000, 18999.0, 9499.50, 1329.93, 10829.43, 319.47),
('2024-12-15', 'Robert Smith', 'robert.smith@yahoo.com', 48912, 'Blue', 15000, 25999.0, 12999.50, 1819.93, 14819.43, 437.07),
('2024-08-25', 'Sophia Martinez', 'sophia.martinez@hotmail.com', 56234, 'Gray', 12000, 24999.0, 12499.50, 1749.93, 14249.43, 420.63),
('2024-09-14', 'Liam Brown', 'liam.brown@outlook.com', 87456, 'Red', 2000, 35999.0, 17999.50, 2519.93, 20519.43, 605.63),
('2024-06-30', 'Isabella Wilson', 'isabella.wilson@gmail.com', 63921, 'Black', 5000, 49999.0, 24999.50, 3499.93, 28499.43, 841.85),
('2024-05-22', 'Michael Taylor', 'michael.taylor@ymail.com', 75641, 'Green', 25000, 31999.0, 15999.50, 2239.93, 18379.43, 542.19),
('2024-03-11', 'Olivia Anderson', 'olivia.anderson@live.com', 12389, 'White', 8000, 41999.0, 20999.50, 2939.93, 23939.43, 705.63);