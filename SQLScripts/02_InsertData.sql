USE SalesForecasting;
GO

-- Insert data into Orders, Products, OrderReturns from Excel (use SSMS Import and Export Wizard)

-- Populate Customers
INSERT INTO Customers (CustomerId, CustomerName)
SELECT DISTINCT CustomerId, CustomerName FROM Orders;
GO

-- Populate ShipModes
INSERT INTO ShipModes (ShipModeName)
SELECT DISTINCT ShipMode FROM Orders;
GO

-- Populate Segments
INSERT INTO Segments (SegmentName)
SELECT DISTINCT Segment FROM Orders;
GO

-- Populate Regions
INSERT INTO Regions (RegionName)
SELECT DISTINCT Region FROM Orders;
GO
