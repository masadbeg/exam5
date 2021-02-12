create table car (id bigint, name varchar(255), model varchar(255), gas varchar(255), vehicle varchar(255), transmission varchar(255), year integer,color varchar(255));
create table driver (id bigint, name varchar(255), surname varchar(255), birthday date, experience integer, gender varchar(255), car_id integer);
create table dispatch (id bigint, name varchar(255), surname varchar(255), birthday date, gender varchar(255));


insert into car values (1, 'audi','a6','бензин', '2л', 'автомат', 2005, 'серый'), (2, 'toyota', 'avensis', 'бензин', '2л', 'автомат', 2007, 'серый'), (3,  'volkswagen', 'passat','бензин', '2.5л', 'типтроник', 2009, 'черный'), (4, 'subaru', 'legacy', '2.5л','бензин', 'вариатор', 2004, 'синий'), (5, 'toyota', 'prius', 'бензин', '1.8л', 'вариатор',2008, 'белый'), (6, 'honda', 'accord', 'бензин', '2л', 'механика',2003, 'черный'),(7, 'mercedes-benz', 'e-klasse','дизель', '3л','автомат',1999,'серый'), (8, 'kia', 'optima', 'бензин', '2л', 'автомат', 2010, 'белый'), (9, 'honda','fit','дизель','1.5л','механика',2005, 'красный'), (10, 'hyundai','sonata','бензин', '2л', 'автомат', 2009, 'серый'); 
insert into driver values (10, 'Айбек', 'Абдрахманов','1978-12-01',15, 'мужской',10),(20, 'Кайрат','Каримов','1994-05-06',7,'мужской',9), (30, 'Данияр', 'Максатов', '1988-10-10', 13, 'мужской',8),(40, 'Жибек','Уланова', '1991-02-06',8, 'женский',7), (50, 'Актан', 'Акылов','1987-03-09',16,'мужской',6), (60, 'Арина', 'Калыкова', '1989-04-01', 11, 'женский',5),(70, 'Марат','Ибраев', '1990-01-03',13,'мужской',4),(80,'Евгений','Петров','1981-05-07', 11, 'мужской',3), (90, 'Татьяна', 'Андреева', '1976-08-08',20,'женский',2),(100, 'Петр','Иванов', '1980-07-07', 14, 'мужской',1);
insert into dispatch values (100, 'A','B', '1993-01-02','женский'),(200, 'C','D','1991-03-06', 'мужской'), (300, 'E','F','1992-05-04', 'женский'), (400, 'G','H', '1994-07-01','мужской'), (500,'I','J', '1995-05-05', 'женский'),(600, 'K','L','1994-04-04', 'мужской'),(700,'M','N', '1994-05-08', 'женский'), (800, 'O','P', '1993-02-01', 'мужской'), (900, 'Q','R', '1995-03-09', 'женский'),(1000, 'S','T','1992-05-09','мужской');

select*from car where name = 'toyota';
select distinct name from dispatch order by name desc;
update car set name = 'mersus' where name ='mercedes-benz';
delete from dispatch where name = 'A';
select name from driver where experience >10;
select avg(experience) from driver where birthday > '1985-10-10';
select * from car join driver on car.id=driver.car_id;
select name, count(*) from car group by name order by count desc;




