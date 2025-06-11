create table employee (employee_id int(30),name char(50),gender char(20), department char(30),education char(50),month_of_joining char(30), salary int(20));
desc employee;
select * from employee;
insert into employee(id,name,gender,department,education,month_of_joining,salary) values
(1001,"Ajay","M","Engineering","Doctoral","Jan",25),
(1002,"Babloo","M","Engineering","UG","Feb",23),
(1003,"Chhavi","F","HR","PG","March",15),
(1004,"Dheeraj","M","HR","UG","Jan",12),
(1005,"Evina","F","Marketing","UG","March",16),
(1006,"Fredy","M","Sales","UG","Dec",10),
(1007,"Graima","F","Sales","PG","March",10),
(1008,"Hans","M","Admin","PG","Nov",8),
(1010,"Jai","M","Peon","High School","Dec",4);