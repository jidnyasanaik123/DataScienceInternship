create table staff1 (id int(20), first_name char(50), last_name char(50), age int(20), datejoined int(20),location char(50));
desc staff1;
select * from staff1;
insert into staff1(id,first_name,last_name,age,datejoined,location) values(1,"Will","Smith",52,2020/08/23,"Los Angles"),(2,"Brad","Pitt",56,2018/06/15,"San Francisco"),(3,"Tom","Hans",64,2017/02/27,"San Diego"),(4,"Angelina","Jolie",45,2019/04/02,"Los Angles"),(5,"Meryl","Streep",71,2014/03/21,"Manhattan");

SELECT * FROM staff1 WHERE age > 50 AND location = 'Los Angeles';
SELECT * 
FROM staff1
WHERE location = 'Los Angeles' 
   OR last_name = 'Pitt';