use deneme2;
-- birden fazla database varsa "use" komutu ile kullanacagmiz db seciyoruz
/*
aciklamayi bu sekilde de yazabiliriz Java gibi
*/
create table student
(id varchar(4), st_name varchar(30), age int);
-- basliklarin degisken tiplerini tanimladik

-- VERI GIRISI --
insert into student values ('1001','Ali Can','25'); 
insert into student values ('1002','Ali Can','35'); 
insert into student values ('1003','Ali Can','45'); 
insert into student values ('1004','Ali Can','55'); 

insert into deneme1.student values ('1008','Test Can','25'); 

select * from student;

-- PARCALI VERI GIRISI --
insert into student (st_name,age) values ('Murat Can','35');

-- DELETE a TABLE--
drop table student;
-- student tablosunu siler

