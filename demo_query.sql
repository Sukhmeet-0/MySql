-- create database tutorial
-- use tutorial


-- create table users
-- (
-- 	Id int unsigned,
--     name varchar(100),
--     email varchar(150),
--     password varchar(100),
--     contact varchar(15),
--     address text,
--     dob date,
--     gender enum("M","F","O"),
--     status boolean
-- )

-- select * from tutorial.users;
-- insert into users (id,name,email,password,contact,address,dob,gender,status) 
 
-- values(1,"sukhmeet","Sukhmeets111@gmail.com","123456789","7814583191","kot kuljas rai batala","2001-09-01","M",1)
-- select * from users

-- insert into users (id,name,email,password,contact,address,dob,gender,status)
-- values
-- (2,"harmeet","h4rmeet@gmail.com","123456789","9815161041","kot kuljas rai batala","1997-09-12","M",1),
-- (3,"gurmeet","gurmeet.anand.143@gmail.com","123456789","9815261041","kot kuljas rai batala","1972-06-01","M",1)
-- select * from users
-- insert into users values(4,"kulwant","kulwant@gmail.com","123456789","8146369800","kot kuljas rai batala","2001-09-01","F",1)


-- select name , email from users
-- select name as "student name" from users
-- select * from users
-- select * from users where id > 2;
-- use tutorial 
-- create table sample
-- (
-- 	Id int unsigned,
--     name varchar(100),
--     age int unsigned,
--     gender enum("M","F","O"),
--     phone varchar(13),
--     status boolean
-- )
-- select * from sample

-- insert into sample values
-- (1,"A","17","M","1234",1),
-- (2,"B","21","F","4567",1),
-- (3,"C","30","F","8978",1),
-- (null,"D","25","M","3434",1),
-- (4,"E","23","M","2323",1)

-- constraints are (not null, unique, check, default)
-- use tutorial
-- select * from sample where age > 20 or age < 22
-- select * from sample where age > 20 and age < 22

-- insert into sample values(13,"F","46","F","2939",1)
-- select * from sample
-- select * from sample where age  = 30 or age = 25


-- SELECT * FROM sample where age in(19,21,30)
-- use tutorial;
-- select * from users where name like "s%"
-- select * from users where name like "%s"
-- select * from users where name like "%a%"
-- select * from users where name like "a_____"
-- select * from users where name like "s_____%"


-- select * from sample where age between 20 and 25
-- select * from sample where age not between 20 and 25

-- select * from users order by name asc
-- select * from users order by name desc
-- select distinct gender from users

-- select * from users where name is null
-- select * from users where name is not null;
-- insert into users values(5,null,"null@gmail.com","209202390","093i302493",null,null,null,1)

-- use tutorial;
-- select * from users order by name asc limit 2
-- select * from sample limit 5 offset 4

-- select count(id) from sample ;
-- select * from sample;
-- select min(age) from sample;
-- select max(age) from sample;
-- select sum(age) from sample;
-- select avg(age) from sample;


-- update sample set age = 3 where age is null;
-- select * from sample;
-- update sample set id = 45 where id = 3;

-- delete from sample where id = 45;
-- delete from sample where id = 13;
-- insert into sample values(0,"Aman",34,"O","32987974",0);
-- select * from sample;
-- delete from sample where id = 5;
-- insert into sample values(5,"hkjn",34,"O","32987974",0);

-- use tutorial;
-- select * from sample;
-- commit;
-- update sample set id  =  9 where id = 4;
-- rollback;


use tutorial;
-- select * from users;

-- create table city
-- (
-- 	id int ,
--     name varchar(100) not null UNIQUE
-- );
-- insert into city values
-- (1,"agra"),
-- (2,"Delhi"),
-- (3,"kolkata"),
-- (4,"mumbai");

-- select * from cities;

-- create table students
-- (
-- 	 id int not null unique AUTO_INCREMENT,
--      name varchar(100) not null,
--      email varchar(100) not null unique,
--      city_id int null,
--      PRIMARY KEY(id) ,
-- 	 FOREIGN KEY (city_id) REFERENCES cities(cid)
-- );

-- select * from students;

-- insert into students(name,email,city_id) 
-- values
-- ("sukhmeet","sukhmeets111@gmail.com",1),
-- ("Harmeet","h4rmeet@gmail.com",2);

-- select * from students;

-- insert into students (name,email) values("kulwant",'kulwant@gmail.com');

-- select * from students
-- inner join cities
-- on students.city_id = cities.cid;

-- insert into students(name,email,city_id) values('shruti','ss@gmail.com',null);


-- select * from students
-- left join cities
-- on students.city_id =cities.cid;


-- select * from students
-- right join cities
-- on students.city_id =cities.cid;

-- select * from students cross join cities;
-- select * from cities cross join students;

-- create table courses
-- (
-- 	cid int not null unique,
--     name varchar(100) not null
-- );
-- insert into courses values 
-- (1,'php'),
-- (2,'java'),
-- (3,'cpp'),
-- (4,'python');


-- select * from students
-- inner join cities
-- on students.city_id = cities.cid
-- inner join courses
-- on students.city_id = courses.cid;

-- create table pop(cid int not null unique,total int not null);
-- insert into pop values(1,4),(2,3),(3,1),(4,8);

-- select * from students
-- group by (id)
-- select id, count(id) from students group by (id);

-- select id,cities.name, count (id) as total from students
-- inner join cities
-- on students.id=cities.cid
-- group by (id)
-- having count(id)>=2;


#select name from students
#where city_id =  (select cid from cities where name ='mumbai');
#where  exists (select cid from cities where name ='mumbai');
# select cid from cities where name = 'mumbai'




 


























