declare  @staffid int 

INSERT Staffs(RealName, LoginName, Password, Status, CreatedOn, CreatedBy) VALUES('��С��', 'lxl', 'bHhs', 0, GETDATE(), 1)
set @staffid = (SELECT @@IDENTITY)
INSERT StaffRoles(Role, StaffID, Status, CreatedOn, CreatedBy) VALUES(0, @staffid, 0, GETDATE(), 1)
INSERT StaffRoles(Role, StaffID, Status, CreatedOn, CreatedBy) VALUES(1, @staffid, 0, GETDATE(), 1)

INSERT Staffs(RealName, LoginName, Password, Status, CreatedOn, CreatedBy) VALUES('�', 'lh', 'bGg=', 0, GETDATE(), 1)
set @staffid = (SELECT @@IDENTITY)
INSERT StaffRoles(Role, StaffID, Status, CreatedOn, CreatedBy) VALUES(0, @staffid, 0, GETDATE(), 1)
INSERT StaffRoles(Role, StaffID, Status, CreatedOn, CreatedBy) VALUES(1, @staffid, 0, GETDATE(), 1)

INSERT Staffs(RealName, LoginName, Password, Status, CreatedOn, CreatedBy) VALUES('������', 'zxm', 'enht', 0, GETDATE(), 1)
set @staffid = (SELECT @@IDENTITY)
INSERT StaffRoles(Role, StaffID, Status, CreatedOn, CreatedBy) VALUES(0, @staffid, 0, GETDATE(), 1)
INSERT StaffRoles(Role, StaffID, Status, CreatedOn, CreatedBy) VALUES(1, @staffid, 0, GETDATE(), 1)

INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('ͶӰ��', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('����', 0, GETDATE(), 1)

INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(1, 1, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(2, 2, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(3, 3, 1, 0, GETDATE())