CREATE DATABASE [IF NOT EXISTS] atlas;


CREATE TABLE IF NOT EXISTS `continent` (
  `continentId` varchar(255) NOT NULL ,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`continentId`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
  
  

 CREATE TABLE IF NOT EXISTS `region` (
  `idRegion` varchar(255) NOT NULL,
  `idContinent` varchar(255) NOT NULL,
  `idRegion` varchar(255) NOT NULL,
  PRIMARY KEY (`idRegion`),
  FOREIGN KEY (`idContinent`) REFERENCES continent(`continentId`),
  FOREIGN KEY (`idContinent`) REFERENCES continent(`continentId`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

  CREATE TABLE IF NOT EXISTS `area` (
  `idArea` varchar(255) NOT NULL,
  `areaName` varchar(255) NOT NULL,
  `mobsLevel` varchar(255) DEFAULT NULL,
  `type` varchar(255),
  `connections` varchar(255),
  `idRegion` varchar(255) NOT NULL,
  `idContinent` varchar(255) NOT NULL,
  PRIMARY KEY (`idArea`),
  FOREIGN KEY (`idRegion`) REFERENCES region(`idRegion`),
  FOREIGN KEY (`idContinent`) REFERENCES continent(`continentId`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
