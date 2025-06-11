create database customer_DB;

use customer_DB;

create table custt(cust_id int(20) primary key, cust_name char(50));
desc custt;
select * from custt;
insert into custt(cust_id,cust_name) values(1,"John"),(2,"Jane"),(3,"Bob");

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

create table  employeee( empid int (20) primary key, name char(50), country char(20));
desc employeee;
select * from employeee;
insert into employeee(empid,name,country) values(1,"shubham","india"),(2,"aman","australia"),(3,"naveen","sri lanka"),(4,"aditya","austria"),(5,"nishant","spain");

create table  emp21( empid int (20), name char(50), country char(20));
desc emp21;
select * from emp21;
insert into emp21(empid,name,country) values(1,"tommy","england"),(2,"alien","france"),(3,"nancy","india"),(4,"adi","ireland"),(5,"sandy","spain");

select country from employeee
union all
select country from emp21
order by country;