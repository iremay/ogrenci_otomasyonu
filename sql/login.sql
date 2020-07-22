use ogrenciotomasyonu

CREATE TABLE `login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

use login;

INSERT INTO `ogrenciotomasyonu`.`login` (`username`, `password`) VALUES ("irem", "1234");