use batch60_61;

CREATE TABLE calisanlar
(
    id CHAR(5),
    name VARCHAR(50),
    maas int,
    CONSTRAINT calisanlar_id_pk PRIMARY KEY(id)
);

INSERT INTO calisanlar VALUES(10001, 'Ali Can', 12000);
INSERT INTO calisanlar VALUES(10002, 'Veli Han', 2000);
INSERT INTO calisanlar VALUES(10003, 'Mary Star', 7000);
INSERT INTO calisanlar VALUES(10004, 'Angie Ocean', 8500);

-- 1) En yüksek maas
select max(maas) from calisanlar;


-- 2) En düşük maaş
select min(maas) from calisanlar;


-- 3) En yüksek 2. maaş
select maas from calisanlar order by maas DESC limit 1,1;

-- 4) En düşük 2. maaş
select maas from calisanlar order by maas ASC limit 1,1;

-- 5) En yüksek 3. maaş
select maas from calisanlar order by maas DESC limit 2,1;

-- 6) En düşük 3. maaş
select maas from calisanlar order by maas ASC limit 2,1;

-- 7) Interview Question: En yüksek maaş alan çalışan bilgileri
select * from calisanlar order by maas DESC limit 1;				


                         
-- 8) Interview Question: En düşük maaş alan calısan bilgileri 
select * from calisanlar order by maas ASC limit 1;	


-- 7) En yüksek 3. maaşı alan calisan bilgileri
select * from calisanlar order by maas DESC limit 2,1;	
