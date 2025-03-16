SELECT TOP 5 c.CustomerID, p.FirstName + ' ' + p.LastName AS CustomerName, SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
GROUP BY c.CustomerID, p.FirstName, p.LastName
ORDER BY TotalSales DESC;

SELECT TOP 5 P.FirstName, P.LastName, E.HireDate  
FROM HumanResources.Employee AS E  
JOIN Person.Person AS P ON E.BusinessEntityID = P.BusinessEntityID  
ORDER BY E.HireDate DESC;

SELECT P.Name AS ProductName, P.ListPrice, V.Name AS VendorName  
FROM Production.Product AS P  
JOIN Purchasing.ProductVendor AS PV ON P.ProductID = PV.ProductID  
JOIN Purchasing.Vendor AS V ON PV.BusinessEntityID = V.BusinessEntityID  
WHERE P.Name LIKE '%Bike%'  
AND P.ListPrice > 1000  
ORDER BY P.ListPrice DESC;
