SELECT Row_NUmber() OVER (Order By New_ID) Id, Student From(
select CASE WHEN ID%2=0 THEN ID-1 ELSE ID+1 END AS NEW_ID,* from seat
 ) A Order By NEW_ID;