--Dodatak troskova dostave na sve porudzbine koje su jeftinije od 1000 dinara
IF OBJECT_ID ('OrderShipment', 'TR') IS NOT NULL
DROP TRIGGER OrderShipment
Go
CREATE TRIGGER OrderShipment
ON [Order]
instead of update
as
begin 
declare @price as numeric (10,2) = (select price from inserted);

if(@price <1000)
begin 
update [Order] set price =@price+250 where orderID=(select orderID from inserted);
end
else begin
update [Order] set price=@price where orderID=(select orderID from inserted);
end
end

select * from [Order]

update [Order] set price=700 where orderID=3

-- Provera datuma, nemoguca promena datuma porudzbine na datum iz buducnosti

if object_id('OrderDate','tr') is not null
drop trigger OrderDate;
go
create trigger OrderDate on [Order]
after UPDATE
as
begin
	declare @currDate date = (SELECT CONVERT(date,GETDATE()))
	declare @newDate date=(select orderDate from inserted)
	declare @oldDate date =(select orderDate from deleted)
	declare @order int = (select orderID from inserted)
	SET NOCOUNT ON;
			if(@newDate > @currDate)
				begin
					print('ERROR, you have entered a date that is set in the future from todays date')
					update [Order] set orderDate=(select orderDate from deleted) where orderID= @order
					return;
				end;
end;
go

update [Order] set orderDate='4/13/2021' where orderID=3


