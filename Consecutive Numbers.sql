select Num1 ConsecutiveNums  From (
select distinct t1.Num num1, t2.Num Num2, t3.Num Num3
From logs t1 
inner join logs t2 on (t1.id = t2.id-1)
inner join logs t3 on (t2.id = t3.id-1)
    ) A Where num1=num2 and num1=num3