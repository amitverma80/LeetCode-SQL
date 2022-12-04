-- SQL Server
SELECT u.user_id AS buyer_id  , u.join_date, ISNULL(T.orders_in_2019, 0)   orders_in_2019
FROM Users U
LEFT OUTER JOIN (
    SELECT COUNT(O.buyer_id) orders_in_2019 , buyer_id FROM Orders O
    WHERE YEAR(O.order_date)=2019
    GROUP BY buyer_id
) T ON (u.user_id = T.buyer_id)


# My SQL
SELECT u.user_id AS buyer_id  , u.join_date, IFNULL(T.orders_in_2019, 0)   orders_in_2019
FROM Users U
LEFT OUTER JOIN (
    SELECT COUNT(O.buyer_id) orders_in_2019 , buyer_id FROM Orders O
    WHERE YEAR(O.order_date)=2019
    GROUP BY buyer_id
) T ON (u.user_id = T.buyer_id)
