create database customer_DB;

use customer_DB;

create table cust(cust_id int(20) primary key, cust_name char(50));
desc cust;
select * from cust;
insert into cust(cust_id,cust_name) values(1,"John"),(2,"Jane"),(3,"Bob");

CREATE TABLE staff1 (
    order_id INT(20) PRIMARY KEY,
    order_num INT(20) NOT NULL,
    cust_id INT(20),
    FOREIGN KEY (cust_id) REFERENCES cust(cust_id)
);

DESCRIBE staff1;
select * from staff1;
INSERT INTO staff1(order_id, order_num, cust_id) VALUES
(1, 101, 1),
(2, 102, 2),
(3, 103, 3);

create table  employee( empid int (20) primary key, name char(50), country char(20));
desc employee;
select * from employee;
insert into employee(empid,name,country) values(1,"shubham","india"),(2,"aman","australia"),(3,"naveen","sri lanka"),(4,"aditya","austria"),(5,"nishant","spain");

create table  emp2( empid int (20), name char(50), country char(20));
desc emp2;
select * from emp2;
insert into emp2(empid,name,country) values(1,"tommy","england"),(2,"alien","france"),(3,"nancy","india"),(4,"adi","ireland"),(5,"sandy","spain");

select country from employee 
except
select country from emp2
order by country;

select *
from employee
inner join emp2
on employee.empid=emp2.empid;

create database cust_DB;

use cust_DB;

create table cust1(customer_id int(20) primary key, first_name char(50), last_name char(50), address_id int(20));
desc cust1;
select * from cust1;
insert into cust1(customer_id,first_name,last_name,address_id) values(1,"marry","jonas",5),(3,"linda","smith",7),(4,"madan","mohan",8),(2,"bary","williams",6);

create table cust2(customer_id int(20), amt int(50), mode char(50), date int(50));
desc cust2;
select * from cust2;
insert into cust2(customer_id,amt,mode,date) values(1,60,"cash",3/4/2024),(2,30,"creditcard",5/4/2024),(8,110,"cash",15/4/2024),(10,70,"mobile payment",20/4/2024),(11,80,"cash",29/4/2024);

select *
from cust1 
left join cust2 
on cust1.customer_id=cust2.customer_id;


create table new1 (new_id int(20),new_cat char(50));
desc new1;
select * from new1;
insert into new1 (new_id,new_cat) values(100,"Agni"),(200,"Agni"),(500,"Dharti"),(700,"Dharti"),(200,"Vayu"),(300,"Vayu"),(500,"Vayu");

select new_id,new_cat,
sum(new_id) over(order by new_id rows between unbounded preceding and unbounded following)as "total",
avg(new_id) over(order by new_id rows between unbounded preceding and unbounded following)as "average",
count(new_id) over(order by new_id rows between unbounded preceding and unbounded following)as "count",
min(new_id) over(order by new_id rows between unbounded preceding and unbounded following)as "min",
max(new_id) over(order by new_id rows between unbounded preceding and unbounded following)as "max"
from new1;






