--Init Admin
INSERT Users(LoginName, Password, Type) VALUES('admin', 'YWRtaW4=', 0)
INSERT Admins(RealName, UserID, Status, CreatedOn, CreatedBy) Values('ϵͳ����Ա', (SELECT @@IDENTITY), 0, getdate(), 1)

-- Test Data
INSERT Users(LoginName, Password, Type) VALUES('lxl', 'bHhs', 1)
INSERT Staffs(RealName, UserID, Status, CreatedOn, CreatedBy) VALUES('��С��', (SELECT @@IDENTITY), 0, GETDATE(), 1)

INSERT Users(LoginName, Password, Type) VALUES('lh', 'bGg=', 1)
INSERT Staffs(RealName, UserID, Status, CreatedOn, CreatedBy) VALUES('�', (SELECT @@IDENTITY), 0, GETDATE(), 1)

INSERT Users(LoginName, Password, Type) VALUES('zxm', 'enht', 1)
INSERT Staffs(RealName, UserID, Status, CreatedOn, CreatedBy) VALUES('������', (SELECT @@IDENTITY), 0, GETDATE(), 1)

INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('�������', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('ͶӰ��', 0, GETDATE(), 1)
INSERT Items(Name, Status, CreatedOn, CreatedBy) VALUES('����', 0, GETDATE(), 1)