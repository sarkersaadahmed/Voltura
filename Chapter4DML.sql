CREATE TABLE CryptoPurchases (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Symbol VARCHAR(10),
    BuyPrice DECIMAL(10,2),
    Quantity INT,
    PurchasedAt DATETIME
);

CREATE TABLE ETFAssets (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Symbol VARCHAR(10),
    BuyPrice DECIMAL(10,2),
    Quantity INT,
    PurchasedAt DATETIME
);

CREATE TABLE StockAssets (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Symbol VARCHAR(10),
    BuyPrice DECIMAL(10,2),
    Quantity INT,
    PurchasedAt DATETIME
);

CREATE TABLE ForexAssets (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Symbol VARCHAR(15),
    BuyPrice DECIMAL(10,5),
    Quantity DECIMAL(18,4),
    PurchasedAt DATETIME
);

-- add column
ALTER TABLE ETFAssets
ADD email VARCHAR(50) NOT NULL;

ALTER TABLE CryptoPurchases
ADD email VARCHAR(50) NOT NULL;

ALTER TABLE StockAssets
ADD email VARCHAR(50) NOT NULL;

ALTER TABLE ForexAssets
ADD email VARCHAR(50) NOT NULL;

-- drop column
ALTER TABLE CryptoPurchases
DROP COLUMN Fee;

-- alter column
ALTER TABLE CryptoPurchases
ALTER COLUMN Name VARCHAR(100);

----------------------------------
-- INSERT data
----------------------------------

INSERT INTO CryptoPurchases (Name, Symbol, BuyPrice, Quantity, PurchasedAt, email)
VALUES ('Saad', 'BTC', 52000.00, 2, '2024-01-01', 'saad@example.com');

INSERT INTO ETFAssets (Name, Symbol, BuyPrice, Quantity, PurchasedAt, email)
VALUES ('Saad', 'VOO', 400.00, 3, '2024-01-02', 'saad@example.com');

INSERT INTO StockAssets (Name, Symbol, BuyPrice, Quantity, PurchasedAt, email)
VALUES ('Saad', 'AAPL', 175.00, 5, '2024-01-03', 'saad@example.com');

INSERT INTO ForexAssets (Name, Symbol, BuyPrice, Quantity, PurchasedAt, email)
VALUES ('Saad', 'EURUSD', 1.08950, 1500, '2024-01-04', 'saad@example.com');


----------------------------------
-- UPDATE data
----------------------------------

UPDATE CryptoPurchases
SET Quantity = 3
WHERE Name = 'Saad' AND Symbol = 'BTC';

UPDATE ETFAssets
SET BuyPrice = 410.00
WHERE Symbol = 'VOO';

UPDATE StockAssets
SET Quantity = 10
WHERE Symbol = 'AAPL';

UPDATE ForexAssets
SET BuyPrice = 1.09000
WHERE Symbol = 'EURUSD';


----------------------------------
-- DELETE data
----------------------------------

DELETE FROM CryptoPurchases
WHERE Name = 'Saad' AND Symbol = 'BTC';

DELETE FROM ETFAssets
WHERE Symbol = 'VOO';

DELETE FROM StockAssets
WHERE Symbol = 'AAPL';

DELETE FROM ForexAssets
WHERE Symbol = 'EURUSD';



