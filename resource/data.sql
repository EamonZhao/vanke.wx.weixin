declare  @staffid int 

INSERT Staffs(RealName, LoginName, Password, Status, CreatedOn, CreatedBy) VALUES('��С��', 'lxl', 'bHhs', 0, GETDATE(), 1)
set @staffid = (SELECT @@IDENTITY)
INSERT StaffRoles(Role, StaffID) VALUES(0, @staffid)
INSERT StaffRoles(Role, StaffID) VALUES(1, @staffid)

INSERT Staffs(RealName, LoginName, Password, Status, CreatedOn, CreatedBy) VALUES('�', 'lh', 'bGg=', 0, GETDATE(), 1)
set @staffid = (SELECT @@IDENTITY)
INSERT StaffRoles(Role, StaffID) VALUES(0, @staffid)
INSERT StaffRoles(Role, StaffID) VALUES(1, @staffid)

INSERT Staffs(RealName, LoginName, Password, Status, CreatedOn, CreatedBy) VALUES('������', 'zxm', 'enht', 0, GETDATE(), 1)
set @staffid = (SELECT @@IDENTITY)
INSERT StaffRoles(Role, StaffID) VALUES(0, @staffid)
INSERT StaffRoles(Role, StaffID) VALUES(1, @staffid)

INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('ͶӰ��', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('����', 0, GETDATE(), 1)

INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(1, 1, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(2, 2, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(3, 3, 1, 0, GETDATE())

INSERT ExternalPersonnelDiningRegisterHistories(StaffID, CardQuantity, Comment, Status, RegisteredOn) VALUES(1, 3, '���', 0, GETDATE())
INSERT ExternalPersonnelDiningRegisterHistories(StaffID, CardQuantity, Comment, Status, RegisteredOn) VALUES(2, 5, '���', 0, GETDATE())
INSERT ExternalPersonnelDiningRegisterHistories(StaffID, CardQuantity, Comment, Status, RegisteredOn) VALUES(3, 8, '���', 0, GETDATE())

INSERT DinnerTypes(Type, Status, CreatedOn, CreatedBy) VALUES ('����', 0, GETDATE(), 1)
INSERT DinnerTypes(Type, Status, CreatedOn, CreatedBy) VALUES ('����', 0, GETDATE(), 1)

INSERT DinnerPlaces(Place, Status, CreatedOn, CreatedBy) VALUES ('AAA', 0, GETDATE(), 1)
INSERT DinnerPlaces(Place, Status, CreatedOn, CreatedBy) VALUES ('BBB', 0, GETDATE(), 1)
INSERT DinnerPlaces(Place, Status, CreatedOn, CreatedBy) VALUES ('CCC', 0, GETDATE(), 1)

INSERT DinnerRegisterHistories(StaffID, DinnerDate, PeopleCount, TypeID, PlaceID, Status, Comment, RegisteredOn)
VALUES (1, GETDATE(), 4, 1, 1, 0, '���', GETDATE())
INSERT DinnerRegisterHistories(StaffID, DinnerDate, PeopleCount, TypeID, PlaceID, Status, Comment, RegisteredOn)
VALUES (2, GETDATE(), 7, 2, 2, 0, '���', GETDATE())
INSERT DinnerRegisterHistories(StaffID, DinnerDate, PeopleCount, TypeID, PlaceID, Status, Comment, RegisteredOn)
VALUES (3, GETDATE(), 3, 1, 3, 0, '���', GETDATE())