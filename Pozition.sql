CREATE TABLE Departments(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(50),
)

CREATE TABLE Pozitions(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(50)
)

CREATE TABLE Employees(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(50),
Surname nvarchar(50),
DepartmentId int REFERENCES Departments(Id),
PozitionId  int REFERENCES Pozitions(Id)
)


INSERT INTO Employees(Name,Surname)
VALUES ('Nurlan','Nuruzade')

SELECT Employees.Name, Employees.Surname, Departments.Name 'Department', Pozitions.Name 'Pozition' FROM Employees 
FULL JOIN Departments 
ON 
Employees.DepartmentId=Departments.Id
JOIN Pozitions 
ON Employees.PozitionId=Pozitions.Id

