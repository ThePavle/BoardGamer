--Role
insert into [Role] (Role.name)
values ('VIP')
insert into [Role] (Role.name)
values ('None')

--User
insert into [User] (username,email,passwordHash)
values ('pablo','pablo@gmail.com','pablo13')
insert into [User] (username,email,passwordHash)
values ('pavle','pavle@gmail.com','pavle13') 

--Payment
insert into Payment (payDate,type)
values ('4/11/2021','credit card')
insert into Payment (payDate,type)
values ('4/9/2021','cash')
insert into Payment (payDate,type)
values ('4/9/2021','paypall')

--Staff
insert into Staff (username,email,passwordHash)
values ('paul','paul@gmail.com','paul13')
insert into Staff (username,email,passwordHash)
values ('pavel','pavel@gmail.com','pavel')

--Category
insert into Category (name,description)
values('Board game', 'Table top games using cards, dice and maps')
insert into Category (name,description)
values('Video games', 'Video games for PC and all the new gen consoles')

--Model
insert into Model (name,code)
values('DND 5e Book','D5B0')
insert into Model (name,code)
values('World of Warcraft Shadowlands','WOWSL')

--Storage
insert into Storage (name,contact,address)
values ('MIPL','mipl@gmail.com','Njegoseva 6')
insert into Storage (name,contact,address)
values ('GameStop','gamesNS@gmail.com','Gajeva 13')

--Product
insert into Product (price, amount, description, categoryID,modelID,storageID)
values (2400,3,'Book of rules for fith edition dungeons and dragons', 1, 1, 1)
insert into Product (price, amount, description, categoryID,modelID,storageID)
values (5900,1,'WoWs newest expansion, featuring the world of Shadowlands', 2, 2, 2)

--Order
insert into [Order](orderDate, status, address, price, userID, paymentID, productID, staffID)
values('4/10/2021','Delivered', 'Safarikova 20', 7200, 1, 1, 1, 1)
insert into [Order](orderDate, status, address, price, userID, paymentID, productID, staffID)
values('4/3/2021','Pending', 'Vojvode Bojovica 211', 5900, 2, 2, 2, 2)
