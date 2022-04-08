
INSERT		dbo.Buildings
(
    --PKBuilding - column value is auto-generated
    Building
)
VALUES
(
    -- PKBuilding - int
    'Center' -- Building - varchar
)

INSERT	INTO dbo.Customers
(
    --PKCustomers - column value is auto-generated
    Customer,
    Prefix,
    FKBuilding
)
VALUES
(
    -- PKCustomers - int
    'Nursery', -- Customer - varchar
    'KANTO', -- Prefix - varchar
    scope_identity() -- FKBuilding - int
)



INSERT	INTO	dbo.PartNumbers
(
    --PKPartNumber - column value is auto-generated
    PartNumber,
    FKCustomers,
    Available
)
VALUES
(
    -- PKPartNumber - int
    '120021200', -- PartNumber - varchar
    scope_identity(), -- FKCustomers - int
    1 -- Available - bit
)
--------------------------------------------------------------------------------------

INSERT		dbo.Buildings
(
    --PKBuilding - column value is auto-generated
    Building
)
VALUES
(
    -- PKBuilding - int
    'Ranch' -- Building - varchar
)

INSERT	INTO dbo.Customers
(
    --PKCustomers - column value is auto-generated
    Customer,
    Prefix,
    FKBuilding
)
VALUES
(
    -- PKCustomers - int
    'Ranger', -- Customer - varchar
    'JOHTO', -- Prefix - varchar
    scope_identity() -- FKBuilding - int
)



INSERT	INTO	dbo.PartNumbers
(
    --PKPartNumber - column value is auto-generated
    PartNumber,
    FKCustomers,
    Available
)
VALUES
(
    -- PKPartNumber - int
    '99645005', -- PartNumber - varchar
    scope_identity(), -- FKCustomers - int
    1 -- Available - bit
)

---------------------------------------------------------------------------------------------------
INSERT		dbo.Buildings
(
    --PKBuilding - column value is auto-generated
    Building
)
VALUES
(
    -- PKBuilding - int
    'Elite' -- Building - varchar
)
INSERT	INTO dbo.Customers
(
    --PKCustomers - column value is auto-generated
    Customer,
    Prefix,
    FKBuilding
)
VALUES
(
    -- PKCustomers - int
    'Champion', -- Customer - varchar
    'UNOVA', -- Prefix - varchar
    scope_identity() -- FKBuilding - int
)
INSERT	INTO	dbo.PartNumbers
(
    --PKPartNumber - column value is auto-generated
    PartNumber,
    FKCustomers,
    Available
)
VALUES
(
    -- PKPartNumber - int
    '569985200', -- PartNumber - varchar
    scope_identity(), -- FKCustomers - int
    1 -- Available - bit
)