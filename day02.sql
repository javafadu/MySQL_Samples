-- SELECT - WHERE
use deneme2;
create table ogrenciler (
id int, 
isim varchar(40), 
adres varchar(100), 
sinav_notu int 
);

insert into ogrenciler values ('120', 'Ali Can', 'Ankara','75');
insert into ogrenciler values ('121', 'Vali Mert', 'Trabzon','85');
insert into ogrenciler values ('122', 'Ayşe Tan', 'Bursa','65');
insert into ogrenciler values ('123', 'Derya Soylu', 'Istanbul','95');
insert into ogrenciler values ('124', 'Yavuz Bal', 'Ankara','80');

select * from ogrenciler;

/*
SELECT sutun1, sutun2 FROM tablo_adi WHERE kosul
*/

-- SORU01 : Sinav notu 80 den buyuk olan ogrenci bilgilerini listeleyiniz
select * from ogrenciler where sinav_notu>80;

-- SORU02 : Adresi Ankara olan ogrencilerin isim ve adreslerini listeleyiniz
select isim, adres from ogrenciler where adres = 'Ankara';

-- SORU03 : Id si 124 olan ogrencinin bilgilerini listeleyiniz
select * from ogrenciler where id=124;

-- SELECT BETWEEN --
create table personel 
(
id char(4), isim varchar(50), maas int
);

insert into personel values ('1001','Ali Can',70000);
insert into personel values ('1002','Veli Mert',85000);
insert into personel values ('1003','Ayse Tan',65000);
insert into personel values ('1004','Derya Soylu',95000);
insert into personel values ('1005','Yavuz Bal',80000);
insert into personel values ('1006','Sena Beyaz',100000);

select * from personel;

-- BETWEEN : belirtilen iki deger arasindaki verileri listeler

-- SORU04: Id si 1002 ile 1005 arasindaki personel bilgilerini listele
select * from personel where id between '1002' and '1005';
/*
AND: belirtilen sartlardan her ikisi de gerceklesiyorsa
select * from matematik where sinav1>50 AND sinav2>50
her iki sinavdan 50 nin uzerinde alanlari liste

OR : belirtilen sartlardan herhangi birisi gerceklesiyorsa 
select * from matematik where sinav1>50 OR sinav2>50
birinci veya ikinci sinavdan 50 den buyuk olanlari listele

*/

-- SORU05: Derya Soylu ve Yavuz Bal arasindaki personel bilgilerini listeleyiniz
select * from personel where isim between 'Derya Soylu' AND 'Yavuz Bal';

-- SORU06 : Maasi 70000 veya ismi Sena Beyaz olan personeli listeleyiniz
select * from personel where maas = 70000 or isim="Sena Beyaz";

/*
IN : Birden fazla veriyi tek komut ile listeleme imkanini sagliyor
*/

-- SORU07 : Id si 1001, 1002 ve 1004 olan personel bilgilerini listeleyiniz
select * from personel where id='1001' or id='1002' or id='1004';
select * from personel where id IN (1001,1002,1004);

-- SORU08 : Maas, 70000,10000 olan personelleri listeleyiniz:
select * from personel where maas IN (70000,100000);

create table personel
(
id char(4), isim varchar(50), maas int
);
insert into personel values('1001', 'Ali Can', 70000);
insert into personel values('1002', 'Veli Mert', 85000);
insert into personel values('1003', 'Ayşe Tan', 65000);
insert into personel values('1004', 'Derya Soylu', 95000);
insert into personel values('1005', 'Yavuz Bal', 80000);
insert into personel values('1006', 'Sena Beyaz', 100000);
insert into personel values('1007', 'Yildirim Deniz', 120000);
select * from personel;

/*
SELECT LIKE
LIKE : sorgulama yaparken belirli pattern leri kullanabilmemizi saglar

SELECT sutun1, sutun2 FROM table_name WHERE sutun1 LIKE pattern

PATTERN :
% :-> 
_ :->
*/

-- SORU09 : ismi A harfi ile baslayan 
select * from personel where isim like 'A%';

-- SORU10 : ismi N harfi ile biten 
select * from personel where isim like '%n';

-- SORU11 : isminin ikinci harfi E olan personel
select * from personel where isim like '_e%';

-- SORU12 : isminin ikinci harfinde E olan diger harflerinde Y olan personel
select * from personel where isim like '_e%y%';

-- SORU13 : isminde A harfi olmayan personel
select * from personel where isim not like '%a%';

-- SORU14 : maasi 6 haneli olan personeli listeleyiniz
select * from personel where maas between 100000 and 999999;
select * from personel where maas like '______';

-- SORU15 : birinci harfi A ve yedinci harfi A olan personeli liste
select * from personel where isim like 'A%' and isim like '______A%';
select * from personel where isim like 'A_____A%'; 
