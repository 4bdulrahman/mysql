use store;

alter table orders
modify status varchar(6) check(status in ('start', 'finish'));

create table countries(
code int primary key ,
name varchar(20) unique ,
continent_name varchar (20) not null
);

create table users(

id int primary key ,
full_name varchar(20) ,
email varchar (20) unique ,
gender char(1) ,
date_of_birth varchar(15) ,
created_at datetime ,
country_code int 
check(gender in ('m', 'f'))
);

create table orders(
id int primary key ,
user_id int ,
status varchar(6) ,
created_at datetime
check(status in ('start', 'finish'))
);

create table order_products(
order_id int ,
product__id int,
quantity int DEFAULT 0 
);

create table products(
id int primary key ,
name varchar(10) not null ,
price int DEFAULT 0 ,
status varchar(10) ,
created_at datetime ,
check(status in ('valid', 'expired'))
);

Select * from orders 

 left join  users   On (orders.user_id = user.ID)

left join contries on (user.country_code=contries.code)

Left join order_product on (order_product.ID= order_product.order_id)

Left join products  on (order_product .product_ID =product .ID)




