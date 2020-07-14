create database ogrenciotomasyonu;

use ogrenciotomasyonu;
create table ogrenci(
 id int(11) NOT NULL AUTO_INCREMENT,
 ad varchar(50) NOT NULL,
 soyad varchar(45) NOT NULL,
 bolum varchar(50) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id),
  UNIQUE KEY ad_UNIQUE (ad)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
