Create table TestEmployee(ID int identity(1,1) Primary key, Name Varchar(100), Age int, Active int);
Select * from TestEmployee;

--Select All
--Select by Id
--Insert New Record
--Update Existing Record
--Delete Existing Record

Create proc usp_AddEmployee(@Name varchar(100), @Age int, @Active int)
As

Begin
	insert into TestEmployee(Name,Age,Active)
	Values(@Name,@Age,@Active)
End;

Create proc usp_GetAllEmployees
as
begin
select * from TestEmployee
end;


Create proc usp_GetEmployeeById(@Id int)
as
begin
select * from TestEmployee where ID = @Id
end;


Create proc usp_UpdateEmployee(@Id int,@Name Varchar(100),@Age int, @Active int)
as
begin
update TestEmployee set Name = @Name, Age = @Age, Active = @Active where Id = @Id;
end;

Create proc usp_DeleteEmployee(@Id int)
as
begin
delete from TestEmployee where ID= @Id ;
end;