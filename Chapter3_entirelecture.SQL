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
    Symbol VARCHAR(15), --varchar simply means special characters
    BuyPrice DECIMAL(10,5),
    Quantity DECIMAL(18,4),
    PurchasedAt DATETIME
);
--add column
ALTER TABLE ETFAssets
ADD email VARCHAR (50) NOT NULL
ALTER TABLE CryptoPurchases
ADD email VARCHAR (50) NOT NULL
ALTER TABLE StockAssets
ADD email VARCHAR (50) NOT NULL
ALTER TABLE ForexAssets
ADD email VARCHAR (50) NOT NULL

--drop column
ALTER TABLE CryptoPurchases
DROP COLUMN Fee;

--alter column (change size of that column)
ALTER TABLE CryptoPurchases
ALTER COLUMN Name VARCHAR(100);

--rename column
EXEC sp_rename 'CryptoPurchases.BuyPrice', 'PurchasePrice', 'COLUMN';


