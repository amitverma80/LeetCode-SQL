Select Department,  Employee, Salary From (
select Dense_Rank() Over (Partition BY D.Id Order by E.Salary Desc)RN, D.Name As Department, E.Name As Employee, E.Salary 
From Employee E
Inner Join Department D On (E.departmentid = D.Id)
Inner Join(
select DepartmentId,  count(Salary) DeptCount
from Employee Group BY DepartmentId
    )T1 On D.Id = T1.DepartmentId
)T1  Where RN<=3