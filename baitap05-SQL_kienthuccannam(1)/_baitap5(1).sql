--danh muc cac bo phan tham gia ban hang
--use master
--go
--drop database B30
--GO 
--create database B30
--GO
--USE B30
--GO

--chi tiet hoa don ban hang
--create table B30AccDocSales(
--STT int IDENTITY(1,1) PRIMARY KEY,
--DocDate nvarchar(30),
--ItemCode nvarchar(30),
--CustomerCode nvarchar(30),
--Employeecode nvarchar(30),
--DeptCode nvarchar(30),
--Quantity int,
--Amount int)

--danh muc cac bo phan tham gia ban hang
--create table B20Dept(
--DeptCode nvarchar(30),
--DeptName nvarchar(30))

--danh muc cac nhan vien ban hang
--create TABLE B20Employee(
-- EmployeeCode nvarchar(30),
-- EmployeeName nvarchar(30),
-- ManagerCode nvarchar(30)
--)

--danh muc cac khach hang hien tai
--create table B20Customer (
--CustomerCode nvarchar(30),
--CustomerName nvarchar(30))

--doanh muc mat hang
--create table B20Item(
--ItemCode nvarchar(30),
--ItemName nvarchar(30))