CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select salary from (
    select row_number() over (order by salary desc) id, salary From(
    select distinct salary   from employee
  ) A
) B Where Id=@N
        
    );
END