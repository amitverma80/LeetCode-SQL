SELECT Buy.stock_name, (Sell.price - Buy.price)capital_gain_loss 
FROM
(select stock_name,   SUM(price)price
from Stocks Where operation ='Buy'
Group By stock_name) Buy
Inner Join 
(select stock_name,   SUM(price)price
from Stocks Where operation ='Sell'
Group By stock_name) Sell
ON Buy.stock_name = Sell.stock_name
