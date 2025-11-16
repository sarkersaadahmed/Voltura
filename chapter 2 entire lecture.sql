--select, order by, from, group by
select Name, Symbol, SUM(BuyPrice * Quantity) as TotalQuantity 
from dbo.BoughtCryptoBeginner
group by Name, Symbol
order by TotalQuantity;

--select from and where (filtering our specific word
--from that phrase in a chosen column)
select * 
from ForexAssetsBeginner
where Pair like '%NZD'

--making use of top, meaning only selecting first 7
select TOP 7 Ticker, BuyPrice, Quantity, SUM(BuyPrice * Quantity) as TotalPrice
from ETFAssetsBeginner
group by Ticker, BuyPrice, Quantity
order by Quantity;

--distinct is more of LIKE but instead of cutting out duplocates that contain
--a specific word in a phrase, DISTINCT filters out any duplicate that contains the 
--exact same phrase

select DISTINCT Pair
from ForexAssetsBeginner

select BoughtCryptoBeginner.Symbol, ETFAssetsBeginner.PurchasedAt
from BoughtCryptoBeginner
JOIN ETFAssetsBeginner
ON BoughtCryptoBeginner.ID = ETFAssetsBeginner.ID
ORDER BY PurchasedAt

--CASE WHEN
SELECT 
    BoughtCryptoBeginner.Symbol,
    ETFAssetsBeginner.PurchasedAt,
    CASE
        WHEN ETFAssetsBeginner.PurchasedAt < '2024-01-01' THEN 'Old Purchase'
        ELSE 'New Purchase'
    END AS PurchaseType
FROM BoughtCryptoBeginner
JOIN ETFAssetsBeginner
    ON BoughtCryptoBeginner.ID = ETFAssetsBeginner.ID
ORDER BY ETFAssetsBeginner.PurchasedAt;


-- CASE WHEN WITH OTHER QUERIES TESTING
SELECT
	BoughtCryptoBeginner.BuyPrice,
	ForexAssetsBeginner.Quantity,
	CASE
		when BoughtCryptoBeginner.BuyPrice < '1500' THEN 'Cheap'
		else 'Expensive'
	END AS PurcahseLevel

FROM BoughtCryptoBeginner
JOIN ForexAssetsBeginner
	ON BoughtCryptoBeginner.ID = ForexAssetsBeginner.ID
