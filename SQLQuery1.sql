use FWT

create table animalfinal(aid int, name varchar(20), breed varchar(20), gender varchar(20), age int, info varchar(100), location varchar(50))
insert into animalfinal values(1, 'Scar', 'Golden Retriever', 'M', 1, 'BLAH', 'images/1.jpg')
insert into animalfinal values(2, 'Simba', 'Corgi', 'M', 2, 'BLAH', 'images/2.jpg')
insert into animalfinal values(3, 'Nala', 'Alaskan Malamute', 'F', 3, 'BLAH', 'images/3.jpg')
insert into animalfinal values(4, 'Solembum', 'Miane Coon', 'M', 10, 'BLAH', 'images/4.jpg')
insert into animalfinal values(5, 'McGonagall', 'Tabby', 'F', 11, 'BLAH', 'images/5.jpg')
insert into animalfinal values(6, 'Narcissa', 'Persian Cat', 'F',7, 'BLAH', 'images/6.jpg')
insert into animalfinal values(7, 'Mufasa', 'Labrador', 'M', 0.5, 'BLAH', 'images/7.jpg')
select * from animalfinal

create table book(status int, slot varchar(20), name varchar(20), num bigint)
select * from book
delete from book where name='Sandhya'

create table feedback(id int, name varchar(20), number bigint, feed varchar(100))
select * from feedback
delete from feedback where name='Sandhya'

create table stafflogin(id int, name varchar(20), pass varchar(20))
insert into stafflogin values(1, 'staff1', 'doggo')
insert into stafflogin values(2, 'staff2', 'doge')
insert into stafflogin values(3, 'staff3', 'pet')
select * from stafflogin

create table vol(name varchar(20), number bigint, datee varchar(100));
select * from vol
delete from vol where name='Sandhya'

create table users(fname varchar(20), lname varchar(20), uname varchar(20), mail varchar(20), pass varchar(20));
select * from users
