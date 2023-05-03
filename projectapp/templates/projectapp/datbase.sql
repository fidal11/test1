-- \c to connect



create table employee(pk_emp_id serial primary key,
type varchar(100),
first_name varchar(100),
last_name varchar(100),
email varchar(100),
phone varchar(100),
gender varchar(100),
dob date);

create table catogory(
    pk_catogory_id serial primary key,
    catogory_name varchar(200),
    discription varchar(400)
);


-- items
create table products(
    pk_product_id serial primary key,
    product_name varchar(200),
    fk_catogory_id int,
    discription varchar(200),
    price float,
    added_date date,
    foreign key(fk_catogory_id) references catogory(pk_catogory_id)
    on delete cascade on update cascade
);

create table bill(
    pk_bill_id serial primary key,
    customer_name varchar(100),
    customer_phone varchar(100),
    bill_date date
);

-- alter ddl

alter table employee add age varchar(10);

alter table employee drop column age;

alter table products alter column added_date type varchar;
 
 alter table products rename column price to cost;

 alter table products rename to items;


-- crud dml

insert into items (product_name,price,added_date) values(
    'notebook,100,01/02/2023' );

    insert into catogory (catogory_name,discription) values('grocery,food and grains');
    insert into catogory (catogory_name,discription) values('stationary','books and pen');
    insert into catogory(catogory_name,discription) values('fancy','beauty and personal care');
    insert into catogory(catogory_name,discription) values('electronics','gadgets ,house needs');


    
    insert into items (product_name,fk_catogory_id,discription,cost,added_date) values('notebook',1,'classmates','100','01/02/2023');

    insert into items (product_name,fk_catogory_id,discription,cost,added_date) values('eye liner',3,'black color','100','01/02/2023');

    insert into items (product_name,fk_catogory_id,discription,cost,added_date) values('noodles',1,'maggie','50','01/02/2023');

    insert into items (product_name,fk_catogory_id,discription,cost,added_date) values('pen',2,'terchnotip','50','03/05/2023');


insert into employee (first_name,last_name,email,phone,gender,dob) values('M S','Fidal','msfidal2001@gmail.com','7025574050','male','28/03/2001');
insert into employee (first_name,last_name,email,phone,gender,dob) values('shahal','m','shahal@gmail.com','8590457542','male','01/11/2001');
insert into employee (first_name,last_name,email,phone,gender,dob) values('bee','pathu','pathu@gmail.com','6235854172','female','21/08/2002');
insert into employee (first_name,last_name,email,phone,gender,dob) values('anna','mariyam','mariyam@gmail.com','8541457542','female','11/11/2000');


 
--  select commands

select * from employee;
select * from employee where gender ='femail';

select product_name,cost from items;
select * from employee limit 2;


-- delete commands

delete from employee where pk_emp_id =3;


-- functions

select sum(cost) from items;
select avg(cost) frome items;
select max(cost) as most_expensive from items;
select count(*) as total from items;



--  scalar function

select upper(product_name) from items;

select product_name,length(product_name) from items;

select substring(product_name,1,3) from items; 

select round(cost) from items;

select format('%s,%s',first_name,last_name) full_name from employee;



insert into bill(customer_name,customer_phone,bill_date) values('fidal','7025574050','28/03/2023');
insert into bill(customer_name,customer_phone,bill_date) values('murshi','7025574050','25/03/2023');
insert into bill(customer_name,customer_phone,bill_date) values('sheika','7025574050','12/04/2023');
insert into bill(customer_name,customer_phone,bill_date) values('anupama','7025574050','1/01/2023');



create table bill_items(
    bill_item_id serial primary key,
    fk_product_id int,
    item_price varchar(100),
    item_quantity int,
    fk_bill_id bigint,
    foreign key (fk_product_id)references  items(pk_product_id) on delete cascade on update cascade,
    foreign key(fk_bill_id)references bill(pk_bill_id) on delete cascade on update cascade
);

alter table bill_items alter column item_price type float using (item_price::float);

insert into bill_items(fk_product_id,item_price,item_quantity,fk_bill_id)
 values(1,'45',2,1),
 (3,'30',3,1),
 (4,'10',1,1),
 (4,'10',4,2),
 (2,'300',2,3);


--  inner join

select pk_bill_id,bill_date,customer_name,sum(item_price*item_quantity) as total_bill from bill_items inner join bill on pk_bill_id =fk_bill_id group by pk_bill_id order by pk_bill_id;


select pk_bill_id,bill_date,customer_name,item_price*item_quantity
as total_bill from bill_items inner join bill on pk_bill_id =fk_bill_id  pk_bill_id order by pk_bill_id;


-- left join

select product_name,catogory_name from catogory left join items on pk_catogory_id = fk_catogory_id;

-- right join

select product_name,catogory_name from catogory right join items on pk_catogory_id = fk_catogory_id;


-- sub query

select * from items where fk_catogory_id in 
(select pk_catogory_id from catogory where catogory_name='grocery');



-- question1

create table dbqs (order_no serial primary key,
purchase_amt varchar(100),
order_date varchar(100),
customer_id varchar(100),
salesman_id varchar(100));
alter table dbqs rename column prd_date to order_date;

insert into
dbqs(purchase_amt,order_date,customer_id,salesman_id) 
values
('150.5','2012-10-05','3005','5002'),
('270.65','2012-09-10','3001','5005'),
('65.26','2012-10-05','3002','5001'),
('110.5','2012-08-17','3009','5003'),
('948.5','2012-09-10','3005','5002'),
('2400.6','2012-07-27','3007','5001'),
('5760','2012-09-10','3002','5001'),
('1983.43','2012-10-10','3004','5006'),
('2480.4','2012-10-10','3009','5003'),
('250.45','2012-06-27','3008','5002'),
('75.29','2012-08-17','3003','5007'),
('3045.6','2012-04-25','3002','5001');

-- 1. From the following table, write a PSQL query to find the highest grade of 
-- the customers in each city. Return city, maximum grade
-- 2. From the following table, write a PSQL query to find the highest purchase 
-- amount ordered by each customer. Return customer ID, maximum purchase amount.
-- 3. From the following table, write a PSQL query to find the highest purchase 
-- amount ordered by each customer on a particular date. Return, order date and 
-- highest purchase amount
-- 4. From the following table, write a SQL query to find the highest order 
-- (purchase) amount by each customer on a particular order date. Filter the result
-- by highest order (purchase) amount above 2000.00. Return customer id, order date
-- and maximum purchase amount

