--Init Admin
INSERT Users(LoginName, Password) VALUES('admin', 'YWRtaW4=')
INSERT Admins(RealName, UserID, Status, CreatedOn, CreatedBy) Values('ϵͳ����Ա', (SELECT @@IDENTITY), 0, getdate(), 1)

-- Test Data
INSERT Users(LoginName, Password) VALUES('lxl', 'bHhs')
INSERT Staffs(RealName, UserID, Status, CreatedOn, CreatedBy) VALUES('��С��', (SELECT @@IDENTITY), 0, GETDATE(), 1)

INSERT Users(LoginName, Password) VALUES('lh', 'bGg=')
INSERT Staffs(RealName, UserID, Status, CreatedOn, CreatedBy) VALUES('�', (SELECT @@IDENTITY), 0, GETDATE(), 1)

INSERT Users(LoginName, Password) VALUES('zxm', 'enht')
INSERT Staffs(RealName, UserID, Status, CreatedOn, CreatedBy) VALUES('������', (SELECT @@IDENTITY), 0, GETDATE(), 1)

INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('ͶӰ��', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('����', 0, GETDATE(), 1)

INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(1, 1, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(2, 2, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(3, 3, 1, 0, GETDATE())
INSERT ItemBorrowHistories(ItemID, StaffID, Quantity, Status, BorrowedOn) Values(4, 1, 5, 0, GETDATE())