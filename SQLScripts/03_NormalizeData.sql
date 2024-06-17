USE SalesForecasting;
GO

-- Add foreign key columns
ALTER TABLE Orders
ADD ShipModeId INT,
    SegmentId INT,
    RegionId INT;
GO

-- Update Orders to use foreign keys
UPDATE Orders
SET ShipModeId = (SELECT ShipModeId FROM ShipModes WHERE ShipModeName = Orders.ShipMode),
    SegmentId = (SELECT SegmentId FROM Segments WHERE SegmentName = Orders.Segment),
    RegionId = (SELECT RegionId FROM Regions WHERE RegionName = Orders.Region);
GO

-- Add foreign key constraints
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_ShipMode FOREIGN KEY (ShipModeId) REFERENCES ShipModes(ShipModeId),
    CONSTRAINT FK_Orders_Segment FOREIGN KEY (SegmentId) REFERENCES Segments(SegmentId),
    CONSTRAINT FK_Orders_Region FOREIGN KEY (RegionId) REFERENCES Regions(RegionId);
GO

-- Remove redundant columns
ALTER TABLE Orders
DROP COLUMN ShipMode,
DROP COLUMN Segment,
DROP COLUMN Region;
GO
