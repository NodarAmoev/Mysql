-- Вывести клиентов не из Germany, имена которых начинаются на букву A
SELECT *
FROM Customers
WHERE Country <> 'Germany' AND CustomerName LIKE 'A%';



-- Вывести данные о заказах клиентов 1, 2, 5 
-- (проекция: номерзаказа, названиекомпании_перевозчика)
SELECT Orders.OrderID, Shippers.ShipperName AS CompanyName
FROM Orders
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Orders.CustomerID IN (1, 2, 5);





-- Вывести данные о заказах клиентов не из France 
-- (проекция: номерзаказа, имяклиента, фамилия_менеджера)
SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName AS ManagerLastName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country <> 'France';

-- Вывести ср/стоимость товаров от поставщика 4
SELECT AVG(Price) AS AveragePrice
FROM Products
WHERE SupplierID = 4;


-- Вывести один самый дешевый товар от поставщика 1
SELECT *
FROM Products
WHERE SupplierID = 1
ORDER BY Price
LIMIT 1;

-- Вывести один самый дешевый товар от поставщика 1

-- Проекция в базе данных — это выбор только необходимых данных, 
-- чтобы делать запросы более эффективными.




