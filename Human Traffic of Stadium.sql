select * from stadium where visit_date In (
	select s1.visit_date
	from stadium s1 
	inner join stadium s2 ON (s1.id = S2.id+1)
	inner join stadium s3 ON (s2.id = S3.id+1)
	and s1.people >=100 and s2.people >= 100 and s3.people >= 100
) OR visit_date In (
	select s2.visit_date
	from stadium s1 
	inner join stadium s2 ON (s1.id = S2.id+1)
	inner join stadium s3 ON (s2.id = S3.id+1)
	and s1.people >=100 and s2.people >= 100 and s3.people >= 100
) OR visit_date In (
	select s3.visit_date
	from stadium s1 
	inner join stadium s2 ON (s1.id = S2.id+1)
	inner join stadium s3 ON (s2.id = S3.id+1)
	and s1.people >=100 and s2.people >= 100 and s3.people >= 100
) 