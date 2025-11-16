-- ==============================
-- CREATE DATABASE
-- ==============================
CREATE DATABASE Voltura;
GO

USE Voltura;
GO

-- ==============================
-- dbo.BoughtCryptos
-- ==============================
CREATE TABLE dbo.BoughtCryptos (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Symbol VARCHAR(10),
    BuyPrice DECIMAL(18,4),
    Quantity DECIMAL(18,8),
    Timestamp DATETIME
);
GO

-- ==============================
-- dbo.Stocks
-- ==============================
CREATE TABLE dbo.Stocks (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Ticker VARCHAR(10),
    CurrentPrice DECIMAL(18,4),
    LastUpdated DATETIME
);
GO

-- ==============================
-- dbo.Predictions
-- ==============================
CREATE TABLE dbo.Predictions (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    AssetType VARCHAR(20),
    Symbol VARCHAR(20),
    PredictedPrice DECIMAL(18,4),
    ModelUsed VARCHAR(100),
    PredictionTime DATETIME
);
GO




INSERT INTO dbo.BoughtCryptos (COLUMN1, COLUMN2, COLUMN3, COLUMN4, COLUMN5, COLUMN6, ....) VALUES
('Bitcoin', 'BTC', 42850.75, 0.015, '2025-01-15 09:15:23'),
('Ethereum', 'ETH', 2280.10, 0.530, '2025-01-15 09:16:05'),
('Solana', 'SOL', 102.55, 1.800, '2025-01-15 09:17:44'),
('Cardano', 'ADA', 0.482, 250, '2025-01-15 09:18:12'),
('Avalanche', 'AVAX', 32.40, 4.000, '2025-01-15 09:19:01'),
('Chainlink', 'LINK', 15.22, 3.200, '2025-01-15 09:20:21'),
('Polygon', 'MATIC', 0.91, 80, '2025-01-15 09:21:33'),
('Ripple', 'XRP', 0.61, 300, '2025-01-15 09:22:47'),
('Dogecoin', 'DOGE', 0.092, 1200, '2025-01-15 09:23:59'),
('Polkadot', 'DOT', 7.33, 12, '2025-01-15 09:24:40');
