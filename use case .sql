use VideoGames;
-- select * from Customer;
-- select * from Sales_Customer;
-- select * from Game;
-- select * from Sales_Vendor;
-- select * from Vendor;
-- Select Title, Price from Game;

 Use Cases

-- 1) List of Names of Games and their prices

Select Title, Price from Game;

-- 2) List the location that has sales for Pokemon

Select Location from Vendor,Sales_Vendor where Vendor.vendorId = 
Sales_Vendor.VendorId and Sales_Vendor.GameID = '2001';

-- 3) List all Customers whose order quantity was greater than 1

select Customer_Name, Quantity
from Customer, Sales_Customer
where Customer.CustomerId = sales_customer.customerId and sales_customer.quantity > 1;
