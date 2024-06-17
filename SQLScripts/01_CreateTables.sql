CREATE DATABASE SalesForecasting;
GO

USE SalesForecasting;
GO

CREATE TABLE Orders (
    OrderId VARCHAR(50) PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    CustomerId VARCHAR(50),
    SegmentId INT,
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(20),
    RegionId INT,
    ShipModeId INT
);
GO

CREATE TABLE Products (
    OrderId VARCHAR(50),
    ProductId VARCHAR(50),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    ProductName VARCHAR(100),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(10, 2),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);
GO

CREATE TABLE OrderReturns (
    OrderId VARCHAR(50) PRIMARY KEY,
    Comments VARCHAR(255),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);
GO

CREATE TABLE Customers (
    CustomerId VARCHAR(50) PRIMARY KEY,
    CustomerName VARCHAR(100)
);
GO

CREATE TABLE ShipModes (
    ShipModeId INT PRIMARY KEY IDENTITY(1,1),
    ShipModeName VARCHAR(50) UNIQUE
);
GO

CREATE TABLE Segments (
    SegmentId INT PRIMARY KEY IDENTITY(1,1),
    SegmentName VARCHAR(50) UNIQUE
);
GO

CREATE TABLE Regions (
    RegionId INT PRIMARY KEY IDENTITY(1,1),
    RegionName VARCHAR(50) UNIQUE
);
GO
