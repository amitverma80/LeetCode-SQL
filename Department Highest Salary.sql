Select DP.Name Department, E.Name Employee, E.Salary
FROM Employee E 
INNER JOIN (
Select MAX(Salary)Salary, DepartmentId From Employee
Group BY DepartmentId) D ON (E.DepartmentId = D.DepartmentId And E.Salary = D.Salary)
INNER JOIN Department DP ON (E.DepartmentId = DP.Id); 